      subroutine annualcycle(lmonth,f,maxday,yrtype)

! Finds the monthly mean annual cycle of latitudinaly averaged blocking frequency
! NOTE: monthly means need to be used since the length of certain data sets vary 
! (i.e. 360 vs 365 vs 366 day years)

#include "qq.h"

      real, dimension(ix,il):: label
      real, dimension(ix,12):: avXXX,stdXXX
      real, dimension(ix,12,2)::temp
      real, dimension(ix,12,nyr):: XXX 
      integer:: f,i,j,k,nday
      integer:: c
      integer:: iyear,iday,m,maxday,yrtype
      integer, dimension(12):: lmonth

      ! Initializing
      do i=1,ix
       do j=1,12
        do k=1,nyr
         XXX(i,j,k)=0
        enddo
        avXXX(i,j)=0
        stdXXX(i,j)=0
        temp(i,j,1)=0
        temp(i,j,2)=0
       enddo
      enddo
      iyear=nyear
      iday=0
      m=1
      
      ! Label data
      open(f+60,form='unformatted',access='direct',recl=ix*il*4)

      ! Annual cycle output
      open(f+80,form='unformatted')

      do nday=1,maxday
       call datetrack(lmonth,iday,iyear,m,yrtype)
       read(f+60,rec=nday) ((label(i,j),i=1,ix),j=1,il)
       do i=1,ix
        c=0
        do j=iy,il 
         if (label(i,j).NE.0) c=c+1        
        enddo
       if (c.GT.0) XXX(i,m,iyear-nyear+1)=XXX(i,m,iyear-nyear+1)+1
       enddo
      enddo 

  
      ! Average
      do i=1,ix
       do j=1,12
        do k=1,nyr
          XXX(i,j,k)=XXX(i,j,k)/real(lmonth(j))
        enddo
          avXXX(i,j)=sum(XXX(i,j,:))/real(nyr)          
       enddo
      enddo

      ! standard deviation
      do i=1,ix
       do j=1,12
        do k=1,nyr
          stdXXX(i,j)=stdXXX(i,j)+(XXX(i,j,k)-avXXX(i,j))**2
        enddo
          stdXXX(i,j)=sqrt(stdXXX(i,j)/real(nyr)) 
       enddo
      enddo


      ! Rearanging  array to center winter months
      ! in plot 
      do i=1,ix
       do j=1,12
        temp(i,j,1)=avXXX(i,j)
        temp(i,j,2)=stdXXX(i,j)
       enddo
       do j=1,12
        if (j-6.LT.1) then
         k=12 + j-6
        else
         k=j-6
        endif
        avXXX(i,k)=temp(i,j,1)
        stdXXX(i,k)=temp(i,j,2)
       enddo
      enddo


      ! Write output
      do k=1,12   
       write(f+80) avXXX(:,k)*lmonth(k) ! units of days per month
       write(f+80) stdXXX(:,k)*lmonth(k)
      enddo

      close(f+60)
      close(f+80)
      
      return
      end subroutine annualcycle

