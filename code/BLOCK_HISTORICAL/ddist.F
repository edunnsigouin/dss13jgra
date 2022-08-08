      subroutine ddist(dur,nlabel,f,D)

#include "qq.h"

      ! Finds the annual number distribution of block duration 

      integer:: i,j,k,l,f,D
      integer:: nlabel
      integer, dimension(lim,nyr):: dur
      real, dimension(30,nyr):: ddur

      ! OUPUT: 
      ! ddur
      open(f+100)

      ! Initializing
      do iyr=1,nyr 
       do i=1,30
        ddur(i,iyr)=0
       enddo     
      enddo  

      do iyr=1,nyr    
       ! DDUR ***********************************************************
       do k=1,nlabel
          do l=D,30  ! look for blocks >= D days       
            if (dur(k,iyr).EQ.l) then
              ddur(l,iyr)=ddur(l,iyr)+1
            endif
         enddo
       enddo
       ! ****************************************************************
       write(f+100,11) (ddur(i,iyr),i=1,30)
 11    format(30f10.2)
      enddo  ! iyr enddo

      close(f+100)

      return
      end subroutine


      
      
