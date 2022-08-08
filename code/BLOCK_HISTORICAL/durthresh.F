      subroutine durthresh(dur,D,f,yrtype,lmonth,maxday)

      ! Removes data about labels that last 
      ! <= (D) to identify blocks only

#include "qq.h"

      integer:: D,f,yrtype,maxday
      real, dimension(ix,il):: label
      integer, dimension(lim,nyr):: dur
      real, dimension(1):: minlabel,maxlabel
      ! Date tracking variables
      integer:: iyear,iday,m
      integer, dimension(12):: lmonth

      
      ! Label data
      open(f+60,form='unformatted',access='direct',recl=ix*il*4)

      iyear=nyear
      iday=0
      m=1

      do nday=1,maxday
      
       call datetrack(lmonth,iday,iyear,m,yrtype)

       read(f+60,rec=nday) ((label(i,j),i=1,ix),j=1,il) 

       if (sum(label).GT.0) then
        minlabel= minval(label,mask=label.GT.0)
        maxlabel= maxval(label,mask=label.GT.0)
    
        do k=minlabel(1),maxlabel(1)
         if (dur(k,iyear-nyear+1).LT.D) then
          do i=1,ix
           do j=iy,il         
            if (int(label(i,j)).EQ.k) label(i,j)=0
           enddo
          enddo
         endif 
        enddo
       endif

       write(f+60,rec=nday) ((label(i,j),i=1,ix),j=1,il)

      enddo

      close(f+60)

      return
      end subroutine durthresh
