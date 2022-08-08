        program block_index

! THIS PROGRAM TRACKS CONTIGUOUS GEOPOTENTIAL HEIGHT ANOMALIES
! SUBJECT TO AMPLITUDE, SPATIAL, OVERLAP, Z500-hPa GRADIENT AND
! DURATION THRESHOLDS IN ORDER TO IDENTIFY ATMOSPHERIC BLOCKS.

! Written by Etienne Dunn-Sigouin 
! McGill University, Dept.of Atmospheric Science
! Under Prof. Seok-Woo Son
! MSC thesis
! July 28th, 2010

! NOTE: critical parameters are found in "qq.h"
! NOTE2: Anomalies and amplitude thresholds are calculated using SKSanomaly.F 
! NOTE3: This particular code version is used to analyze CMIP5 models
! and NNR

#include "qq.h"
#include "netcdf.inc"

c VARIABLES////////////////////////////////////////////


      ! THRESHOLDS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!       
      ! Standard deviation level                         
      real:: sigma=1.5
      ! Amplitude array (gpm)
      integer, dimension(12)::A
      ! Duration (days)
      integer:: D=5
      ! Spatial scale (million Km^2)
      integer:: S=2.5*10**6
      ! Overlap
      real::  O=0.5
      ! Mean zonal and Meridional scales (degrees)
      integer:: dphi=15,dlambda=10
      ! Z500 gradient
      real:: sgrad=0

      !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      ! Z500-hPa anomaly 
      dimension:: anz(ix,il)
      ! Z500-hPa  
      real, dimension(ix,il,maxdaylim):: z
      ! Area represented by each grid point
      dimension:: pixarea(ix,il)
      ! Min and Max labels for present and past day
      integer, dimension(2,2):: nlabel 
      ! Block label maps for current and past day
      real, dimension(ix,il)::clabel,plabel
      ! Duration of each block by year
      integer, dimension(lim,nyr):: dur 
      ! Duration of each block by month & year
      integer, dimension(12,lim,nyr)::mdur 
      ! Onset date of each block by month & year
      integer, dimension(12,lim,nyr)::onset 
      ! Filename
      integer:: f,i,j,nday
      ! Date tracking variables
      integer:: iyear,iday,m,yrtype,maxday
      integer, dimension(12):: lmonth

      integer:: maxlabel ! tracks the maximum label in ENTIRE (all times) label array


c     START ///////////////////////////////////////////////////////

      ! Calculating area array
      ! (area covered by each grid point)
      call areacalc(pixarea)     

      do f=25,28 ! file number

      ! INITIALIZING ARRAYS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      nlabel(1,1)=1
      nlabel(2,1)=1
      nlabel(1,2)=1
      nlabel(2,2)=1

      maxlabel=1

      do i=1,12
       A(i)=0
       do j=1,nyr
        do nday=1,lim
          dur(nday,j)=0
          mdur(i,nday,j)=0
          onset(i,nday,j)=0
        enddo
       enddo
      enddo
      do i=1,ix
       do j=1,iy
        anz(i,j)=0
        clabel(i,j)=0
        plabel(i,j)=0
        do nday=1,maxdaylim
         z(i,j,nday)=0
        enddo
       enddo
      enddo
      iyear=nyear
      iday=0
      m=1
      !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

      ! INPUT
      ! z500
      call readnetcdf(f,maxday,yrtype,lmonth,z)
      ! Anomaly data
      open(f,form='unformatted',access='direct',recl=ix*il*4)
      ! Thresholds
      open(f+20)
      ! Reading thresholds
      do i=1,12
       read(f+20,*) A(i)
       A(i)=sigma*A(i)
      enddo
      close(f+20)      

      !OUTPUT
      ! Label data
      open(f+60,form='unformatted',access='direct',recl=ix*il*4)
      ! NOTE: dfreq data is opened and closed in fdist.F

      ! *****************************************************************
      ! BLOCK TRACKING ALGORITHM ****************************************
      ! *****************************************************************
      print*, ''  
      print*, 'File=',f   
      print*, 'Tracking anomalies...'


      do nday=1,maxday

         call datetrack(lmonth,iday,iyear,m,yrtype)

         ! Reading anomalies
         read(f,rec=nday) ((anz(i,j),i=1,ix),j=1,il)
         ! Calculate anomalies >= (A)
         call anomaly(anz,A(m))
         ! Assign unique labels to contiguous grid points
         call ccl(anz,clabel,nlabel,maxlabel)
         ! Remove anomalies with spatial scale < (S)
         call spatialthreshold(clabel,nlabel,S,pixarea,maxlabel)
         ! Remove labels who do dont satisfy GHG criteria
         call GHG(nlabel,clabel,z(:,:,nday),anz,sgrad,
     &            dphi,dlambda,maxlabel)
         ! Assign same label to anomalies with >= (O)
         call overlap(nday,O,clabel,plabel,nlabel,maxlabel)
     
         ! Record duration and onset date
         call stat3(clabel,nlabel,dur,mdur,onset,m,iyear)

         ! current max/min labels become past max/min labels
         nlabel(1,2)=nlabel(1,1) 
         nlabel(2,2)=nlabel(2,1)

        ! Tracking the maximum label in the ENTIRE label array
        ! So that the first label on a new day starts at the maximum+1
        ! label. This is so that each different block has a unique label.
        ! By block I mean uniquely labeled anomaly after overlap.F
        if (sum(clabel).GT.0) then
         if (maxval(clabel,mask=clabel.GT.0).GE.maxlabel) then
           maxlabel=maxval(clabel,mask=clabel.GT.0)+1
         endif
        endif 

         do i=1,ix
          do j=1,il
            ! Current label becomes past label
            plabel(i,j)=clabel(i,j) 
          enddo
         enddo

         ! Writing label to file each day
         write(f+60,rec=nday) ((clabel(i,j),i=1,ix),j=1,il)

c         call check(clabel,nlabel,nday)

      enddo

      close(f+60) ! finished writing lables to file
      close(f) ! close anomaly file

      ! Remove labels lasting <= (D) in label and distribution arrays
      call durthresh(dur,D,f,yrtype,lmonth,maxday)

      ! ****************************************************************
      ! END BLOCK TRACKING ALGORITHM ***********************************
      ! ****************************************************************
      print*, 'Number of anomalies satisfying (A),(S),(O) & GHG ='
     +        ,nlabel(2,1)
      print*, 'Total number of blocks = ',count(mask=dur.GE.D)
      print*, 'Finding distributions...' 

      ! BLOCK CHARACTERISTIC DISTRIBUTIONS ******************************
      ! Lat-Lon frequency
      call fdist(lmonth,f,maxday,yrtype)  
      ! Annual cycle frequency
      call annualcycle(lmonth,f,maxday,yrtype)
      ! Number of events by duration distribution
      call ddist(dur,nlabel(2,1),f,D)
      ! **************************************************************** 

      print*, 'DONE'
      print*, ''

      enddo ! File number end
 
      end program block_index




      
     
     
      
