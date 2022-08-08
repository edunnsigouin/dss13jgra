Code for atmospheric blocking index published in [Dunn-Sigouin and Son 2013](https://agupubs.onlinelibrary.wiley.com/doi/full/10.1002/jgrd.50143) Journal of Geophysical Research Atmospheres titled "Northern Hemisphere blocking frequency and duration in the CMIP5 models". The code was also used in a number of other publications including [Dunn-Sigouin and Son 2013](https://journals.ametsoc.org/view/journals/mwre/141/2/mwr-d-12-00134.1.xml) Monthly Weather Review and [Barnes et al. 2015](https://agupubs.onlinelibrary.wiley.com/doi/full/10.1002/2013GL058745) Geophysical Research Letters amongst others.

To run the code for Z500 data:

(1) OUTPUT Z500 ANOMALY DATA + 1 SIGMA ANOMALY THRESHOLDS (/SKS_HISTORICAL)
- use SKS.historical.csh to link data and run makefile that compiles SKSanomaly.F, links critical parameters in qq.h and the subroutines datetrack.F and readnetcdf.F, and runs SKSanomaly.exe

(2) OUTPUT BLOCKING FREQUENCIES (/BLOCK_HISTORICAL)
- use e.bindex.historical.csh to link data and run makefile that compiles e.bindex.F, links qq.h and the subroutines:

ccl.F
anomaly.F
areacalc.F
spatialthresh.F
overlap.F
durthresh.F
stat3.F
stat4.F
fdist.F
nlabelreorder.F
labelreorder.F
datetrack.F
ddist.F
wrap2.F
Adist.F
GHG.F
readnetcdf.F
annualcycle.F

and runs e.bindex.exe.

- A description of each subroutine can be found at the begining of each file.

- Note that this particular version of the code is used for some historical CMIP5 runs and NNR. To run for only one data set, remove input/output data files from .csh file and modify looping over various files within e.bindex.F

- Note also that the code calculates other types of data such as annual cycles fo blocking frequency etc.. which are not necessary to run the code. Feel free to remove them

- Note that necessary fortran libraries to run code are included via the Makefile
