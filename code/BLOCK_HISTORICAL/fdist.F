       subroutine fdist(lmonth,f,maxday,yrtype)

#include "qq.h"
         
       ! Finds the frequency distribution of blocking events 
       ! greater than (D) days by season and by year
       ! and the interannual variability of each
       
       integer:: i,j,k,f,maxday
       real, dimension(ix,il):: label
       ! Average frequency distribution
       real, dimension(ix,il,5)::dfreq
       ! Frequency distribution by year
       real, dimension(ix,il,5,nyr)::adfreq
       ! Interannual variability of frequency distribtuions
       real, dimension(ix,il,5)::stdfreq
       ! Number of days in season per year
       integer, dimension(4,nyr):: c 
       
c      Date tracking variables
       integer:: iyear,iday,m,s ! "s" for season
       integer, dimension(12):: lmonth
 
       ! OUTPUT:
       ! dfreq and stdfreq      
       open(f+40,form='unformatted')
       
       ! INPUT
       ! Label data
       open(f+60,form='unformatted',access='direct',recl=ix*il*4)

       ! Initializing
       do i=1,ix
        do j=1,il
         do s=1,5
          dfreq(i,j,s)=0
          stdfreq(i,j,s)=0
          do k=1,nyr
           adfreq(i,j,s,k)=0
           if (s.LT.5) c(s,k)=0
          enddo
         enddo
        enddo
       enddo
       iyear=nyear
       iday=0
       m=1


       do nday=1,maxday
        call datetrack(lmonth,iday,iyear,m,yrtype)

        if ((m.EQ.12).OR.(m.EQ.1).OR.(m.EQ.2)) s=1
        if ((m.EQ.3).OR.(m.EQ.4).OR.(m.EQ.5)) s=2
        if ((m.EQ.6).OR.(m.EQ.7).OR.(m.EQ.8)) s=3
        if ((m.EQ.9).OR.(m.EQ.10).OR.(m.EQ.11)) s=4

c        if ((m.EQ.12).OR.(m.EQ.1).OR.(m.EQ.2).OR.
c     &        (m.EQ.9).OR.(m.EQ.10).OR.(m.EQ.11)) s=1
c        if ((m.EQ.3).OR.(m.EQ.4).OR.(m.EQ.5)) s=2
c        if ((m.EQ.6).OR.(m.EQ.7).OR.(m.EQ.8)) s=3
c        if ((m.EQ.9).OR.(m.EQ.10).OR.(m.EQ.11)) s=4

        read(f+60,rec=nday) ((label(i,j),i=1,ix),j=1,il)

        ! finding the number of days per season per year
        c(s,iyear-nyear+1)=c(s,iyear-nyear+1)+1

        if (sum(label).GT.0) then
         do i=1,ix
          do j=iy,il
           if (label(i,j).GT.0) adfreq(i,j,s,iyear-nyear+1)
     &                  = adfreq(i,j,s,iyear-nyear+1)+1 
          enddo
         enddo
        endif
       enddo

      
       ! Dividing dfreq by # days for dfreq per season per year
       ! and total per year
       do i=1,ix
        do j=iy,il
         do l=1,iyear-nyear+1
 
          adfreq(i,j,5,l)= adfreq(i,j,1,l)+
     &     adfreq(i,j,2,l)+ adfreq(i,j,3,l)+ adfreq(i,j,4,l)
                
           do k=1,4 ! season              
            adfreq(i,j,k,l)=(adfreq(i,j,k,l)/c(k,l))*100
           enddo

           adfreq(i,j,5,l)=(adfreq(i,j,5,l)/sum(c(:,l)))*100

         enddo
        enddo
       enddo

       ! Finding the seasonal and annual mean dfreq's
       do j=iy,il
        do i=1,ix
         do k=1,5
          dfreq(i,j,k)=dfreq(i,j,k)+
     &            sum(adfreq(i,j,k,:))/(iyear-nyear+1)
         enddo
        enddo 
       enddo


       ! Calculating the std of dfreq fields
       do i=1,ix
        do j=iy,il 
         do k=1,5
          do l=1,iyear-nyear+1 
           stdfreq(i,j,k)=stdfreq(i,j,k)+
     &         (adfreq(i,j,k,l)-dfreq(i,j,k))**2
          enddo
         enddo
        enddo
       enddo
 
       do i=1,ix
        do j=iy,il
         do k=1,5
           stdfreq(i,j,k)=stdfreq(i,j,k)/(iyear-nyear)
           ! recall n-1 for sigma
         enddo
        enddo
       enddo
     
       ! write to f+40
       write(f+40) dfreq(:,:,1)  
       write(f+40) dfreq(:,:,2)
       write(f+40) dfreq(:,:,3)
       write(f+40) dfreq(:,:,4)
       write(f+40) dfreq(:,:,5)
       write(f+40) stdfreq(:,:,1)  
       write(f+40) stdfreq(:,:,2)
       write(f+40) stdfreq(:,:,3)
       write(f+40) stdfreq(:,:,4)
       write(f+40) stdfreq(:,:,5)

       close(f+40)
       close(f+60)

       return
       end subroutine fdist
