       subroutine stat3(label,nlabel,dur,mdur,onset,m,iyear)

#include "qq.h"

       ! Finds the duration of each label
       ! and the duration of each label by month
     
       ! note: for 3 months centered on that month

       integer::i,j,k,m,mstar,mdash,iyear,iyearstar
       ! last label assigned
       integer, dimension(2,2):: nlabel 
       real, dimension(ix,il):: label,dummy
       integer, dimension(lim,nyr):: dur
       integer, dimension(12,lim,nyr):: mdur
       ! block onset date
       integer, dimension(12,lim,nyr):: onset
        

       ! This dummy code will only track the duration of blocks
       ! that exist within a particular geographical area.
       ! i.e this subroutine will eliminate blocks not in 
       ! an area of interest.
       do i=1,ix
        do j=1,il
          dummy(i,j)=label(i,j) ! all blocks
c          if ((i.GT.15).AND.(i.LT.118)) label(i,j)=0 ! ATL blocks
c          if ((i.LT.54).OR.(i.GT.80)) label(i,j)=0 ! PAC Blocks
        enddo
       enddo

       
       do k=nlabel(1,1),nlabel(2,1)
         
         ! if a specific label exists that day
         if (count(mask=int(label).EQ.k).GT.0) then

            dur(k,iyear-nyear+1)=dur(k,iyear-nyear+1)+1
             
          ! if onset date not recorded (ie onset ~= 1) 
          if (sum(onset(:,k,:)).EQ.0) then 
           onset(m,k,iyear-nyear+1) = 1 ! recording onset date
          endif

          ! Blocks occuring in a month are recorded in 3 months 
          ! centered around that month
          do mstar=1,12
           do iyearstar=1,nyr
            ! only record within the month and year in which the block began
            if (onset(mstar,k,iyearstar).GT.0) then
             mdur(mstar,k,iyearstar) = 
     &                        mdur(mstar,k,iyearstar)+1 
            endif
           enddo
          enddo

         endif ! specific label exist endif   
       enddo ! label enddo

       do i=1,ix
        do j=1,il
          label(i,j)=dummy(i,j)
        enddo
       enddo
       
       return
       end subroutine stat3




       




       
