       subroutine anomaly(anz,A)

! At every time step, this subroutine finds anomalies 
! that are above a threshold (A)

#include "qq.h"
 
       integer::i,j,A
       dimension:: anz(ix,il)

c      Isolating anomalies
       do i=1,ix
         do j=1,il
           if (anz(i,j).LE.A) anz(i,j) = 0
           if (j.LE.iy) anz(i,j) = 0       
         enddo
       enddo

       return
       end subroutine anomaly

      
