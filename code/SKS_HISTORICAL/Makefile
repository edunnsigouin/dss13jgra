SHELL=/bin/sh
#
# Makefile for SKSanomaly.F
##############################################################
FC      = ifort 
FFLAGS  = -assume byterecl 
LIBS    = -I/aos/home/joowan/lib/netcdf3/ifort_charney/include \
-L/aos/home/joowan/lib/netcdf.3.6.3/ifort_charney/lib -lnetcdf
##############################################################
CMD  =  SKSanomaly.exe
HDRS =  qq.h 
OBJS =  SKSanomaly.o datetrack.o readnetcdf.o
##############################################################
$(CMD):		$(OBJS) $(HDRS)
	$(FC) -o $@ $(FFLAGS) $(OBJS) $(LIBS)
##############################################################
SKSanomaly.o: $(HDRS)
datetrack.o: $(HDRS)
readnetcdf.o: $(HDRS)
##############################################################
clean:
	$(RM) $(OBJS)
