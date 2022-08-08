      subroutine stat4(clabel,onset,z,nlabel,m,mamp,iyear)

#include "qq.h"

       ! Finds the magnitude of the maximum 
       ! value of a uniquely labeled anomaly
       ! for each month

       ! NOTE: This subroutine must be used AFTER
       ! stat3.F because it records onset month needed 
       ! here
       
       integer:: i,j,iyear,m,mstar
       integer, dimension(2,2):: nlabel
       dimension:: z(ix,il)
       real, dimension(ix,il):: clabel
       ! magnitude of max amplitude by month
       real, dimension(12,lim,nyr):: mamp 
       ! dummy variable to handle vector output of maxloc
       integer, dimension(2):: position
       ! block onset date
       integer, dimension(12,lim,nyr):: onset

     
       ! if no label on field
       if (nlabel(1,1).LE.nlabel(2,1)-1) then 
         do k=nlabel(1,1),nlabel(2,1)-1

           position = maxloc(z,mask=clabel.EQ.k)
           ! maxloc outputs 0 if it cannot find a maximum

           ! Check for onset month. If anomaly is bigger than
           ! before, replace it in onset month.
           do mstar=1,12
             if (onset(mstar,k,iyear-nyear+1).GT.0) then

                if (z(position(1),position(2)).GT.
     &                       mamp(mstar,k,iyear-nyear+1)) then
                 mamp(mstar,k,iyear-nyear+1)=z(position(1),position(2))
                endif
             endif
           enddo

         enddo
       endif

      return
      end subroutine stat4
