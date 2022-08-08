       subroutine wrap2(m,mstar)

       integer::m,mstar

       if (m.GT.12) then
         mstar=1
       elseif (m.LT.1) then
         mstar=12
       else
         mstar=m
       endif 
       
       return
       end subroutine wrap2
