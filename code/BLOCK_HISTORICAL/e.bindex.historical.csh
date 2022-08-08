#!/bin/csh
# Shell code for running e.bindex.F
#
# Anomaly data ////////////////////////////////////////////////
#
# NNR 
set infile1a = SKS_int_z500_historical_NNR_19660101-20051231
# MRI-CGCM3 
set infile2a = SKS_int_z500_historical_MRI-CGCM3_19660101-20051231
# NorESM1-M
set infile3a = SKS_int_z500_historical_NorESM1-M_19660101-20051231
# CanESM2
set infile4a = SKS_int_z500_historical_CanESM2_19660101-20051231
# HadGEM2-CC
set infile5a = SKS_int_z500_historical_HadGEM2-CC_19660101-20051130
# CNRM-CM5
set infile6a = SKS_int_z500_historical_CNRM-CM5_19660101-20051231
# IPSL-CM5A-LR
set infile7a = SKS_int_z500_historical_IPSL-CM5A-LR_19660101-20051231
# IPSL-CM5A-MR
set infile8a = SKS_int_z500_historical_IPSL-CM5A-MR_19660101-20051231
# MIROC5
set infile9a = SKS_int_z500_historical_MIROC5_19660101-20051231
# MIROC-ESM-CHEM
set infile10a = SKS_int_z500_historical_MIROC-ESM-CHEM_19660101-20051231
# MIROC-ESM
set infile11a = SKS_int_z500_historical_MIROC-ESM_19660101-20051231
# bcc-csm1-1
set infile12a = SKS_int_z500_historical_bcc-csm1-1_19660101-20051231
# CCSM4 
set infile13a = SKS_int_z500_historical_CCSM4_19660101-20051231
# MPI-ESM-LR 
set infile14a = SKS_int_z500_historical_MPI-ESM-LR_19660101-20051231
#
set infile15a = SKS_int_z500_historical_BNU-ESM_19660101-20051231
#
set infile16a = SKS_int_z500_historical_CMCC-CM_19660101-20051231
#
set infile17a = SKS_int_z500_historical_IPSL-CM5B-LR_19660101-20051231
#
set infile18a = SKS_int_z500_historical_MPI-ESM-MR_19660101-20051231
#
# Amplitude thresholds ////////////////////////////////////////
#
# NNR 
set infile1b = thresholds_SKS_int_z500_historical_NNR_19660101-20051231
# MRI-CGCM3 
set infile2b = thresholds_SKS_int_z500_historical_MRI-CGCM3_19660101-20051231
# NorESM1-M
set infile3b = thresholds_SKS_int_z500_historical_NorESM1-M_19660101-20051231
# CanESM2
set infile4b = thresholds_SKS_int_z500_historical_CanESM2_19660101-20051231
# HadGEM2-CC
set infile5b = thresholds_SKS_int_z500_historical_HadGEM2-CC_19660101-20051130
# CNRM-CM5
set infile6b = thresholds_SKS_int_z500_historical_CNRM-CM5_19660101-20051231
# IPSL-CM5A-LR
set infile7b = thresholds_SKS_int_z500_historical_IPSL-CM5A-LR_19660101-20051231
# IPSL-CM5A-MR
set infile8b = thresholds_SKS_int_z500_historical_IPSL-CM5A-MR_19660101-20051231
# MIROC5
set infile9b = thresholds_SKS_int_z500_historical_MIROC5_19660101-20051231
# MIROC-ESM-CHEM
set infile10b = thresholds_SKS_int_z500_historical_MIROC-ESM-CHEM_19660101-20051231
# MIROC-ESM
set infile11b = thresholds_SKS_int_z500_historical_MIROC-ESM_19660101-20051231
# bcc-csm1-1
set infile12b = thresholds_SKS_int_z500_historical_bcc-csm1-1_19660101-20051231
# CCSM4 
set infile13b = thresholds_SKS_int_z500_historical_CCSM4_19660101-20051231
# MPI-ESM-LR
set infile14b = thresholds_SKS_int_z500_historical_MPI-ESM-LR_19660101-20051231
#
set infile15b = thresholds_SKS_int_z500_historical_BNU-ESM_19660101-20051231
#
set infile16b = thresholds_SKS_int_z500_historical_CMCC-CM_19660101-20051231
#
set infile17b = thresholds_SKS_int_z500_historical_IPSL-CM5B-LR_19660101-20051231
#
set infile18b = thresholds_SKS_int_z500_historical_MPI-ESM-MR_19660101-20051231
#
# Z500 data ///////////////////////////////////////////////////
# 
# NNR 
set infile1c = int_z500_zg_day_NNR_19660101-20051231
# MRI-CGCM3
set infile2c = int_z500_zg_day_MRI-CGCM3_historical_r1i1p1_19660101-20051231
# NorESM1-M
set infile3c = int_z500_zg_day_NorESM1-M_historical_r1i1p1_19660101-20051231
# CanESM2
set infile4c = int_z500_zg_day_CanESM2_historical_r1i1p1_19660101-20051231
# HadGEM2-CC
set infile5c = int_z500_zg_day_HadGEM2-CC_historical_r1i1p1_19660101-20051130
# CNRM-CM5
set infile6c = int_z500_zg_day_CNRM-CM5_historical_r1i1p1_19660101-20051231
# IPSL-CM5A-LR
set infile7c = int_z500_zg_day_IPSL-CM5A-LR_historical_r2i1p1_19660101-20051231
# IPSL-CM5A-MR
set infile8c = int_z500_zg_day_IPSL-CM5A-MR_historical_r1i1p1_19660101-20051231
# MIROC5
set infile9c = int_z500_zg_day_MIROC5_historical_r1i1p1_19660101-20051231
# MIROC-ESM-CHEM
set infile10c = int_z500_zg_day_MIROC-ESM-CHEM_historical_r1i1p1_19660101-20051231
# MIROC-ESM
set infile11c = int_z500_zg_day_MIROC-ESM_historical_r1i1p1_19660101-20051231
# bcc-csm1-1
set infile12c = int_z500_zg_day_bcc-csm1-1_historical_r1i1p1_19660101-20051231
# CCSM4 
set infile13c = int_z500_zg_day_CCSM4_historical_r6i1p1_19660101-20051231
# MPI-ESM-LR
set infile14c = int_z500_zg_day_MPI-ESM-LR_historical_r1i1p1_19660101-20051231
#
set infile15c = int_z500_zg_day_BNU-ESM_historical_r1i1p1_19660101-20051231
#
set infile16c = int_z500_zg_day_CMCC-CM_historical_r1i1p1_19660101-20051231
#
set infile17c = int_z500_zg_day_IPSL-CM5B-LR_historical_r1i1p1_19660101-20051231
#
set infile18c = int_z500_zg_day_MPI-ESM-MR_historical_r1i1p1_19660101-20051231
#
# Blocking Frequency distributions ////////////////////////////
#
# NNR 
set outfile1a = dfreq_int_z500_historical_NNR_19660101-20051231
# MRI-CGCM3 
set outfile2a = dfreq_int_z500_historical_MRI-CGCM3_19660101-20051231
# NorESM1-M
set outfile3a = dfreq_int_z500_historical_NorESM1-M_19660101-20051231
# CanESM2
set outfile4a = dfreq_int_z500_historical_CanESM2_19660101-20051231
# HadGEM2-CC
set outfile5a = dfreq_int_z500_historical_HadGEM2-CC_19660101-20051130
# CNRM-CM5
set outfile6a = dfreq_int_z500_historical_CNRM-CM5_19660101-20051231
# IPSL-CM5A-LR
set outfile7a = dfreq_int_z500_historical_IPSL-CM5A-LR_19660101-20051231
# IPSL-CM5A-MR
set outfile8a = dfreq_int_z500_historical_IPSL-CM5A-MR_19660101-20051231
# MIROC5
set outfile9a = dfreq_int_z500_historical_MIROC5_19660101-20051231
# MIROC-ESM-CHEM
set outfile10a = dfreq_int_z500_historical_MIROC-ESM-CHEM_19660101-20051231
# MIROC-ESM
set outfile11a = dfreq_int_z500_historical_MIROC-ESM_19660101-20051231
# bcc-csm1-1
set outfile12a = dfreq_int_z500_historical_bcc-csm1-1_19660101-20051231
# CCSM4 
set outfile13a = dfreq_int_z500_historical_CCSM4_19660101-20051231
# MPI-ESM-LR
set outfile14a = dfreq_int_z500_historical_MPI-ESM-LR_19660101-20051231
#
set outfile15a = dfreq_int_z500_historical_BNU-ESM_19660101-20051231
#
set outfile16a = dfreq_int_z500_historical_CMCC-CM_19660101-20051231
#
set outfile17a = dfreq_int_z500_historical_IPSL-CM5B-LR_19660101-20051231
#
set outfile18a = dfreq_int_z500_historical_MPI-ESM-MR_19660101-20051231
#
# Blocking labels ////////////////////////////////////////////
#
# NNR 
set outfile1b = label_int_z500_historical_NNR_19660101-20051231
# MRI-CGCM3 
set outfile2b = label_int_z500_historical_MRI-CGCM3_19660101-20051231
# NorESM1-M
set outfile3b = label_int_z500_historical_NorESM1-M_19660101-20051231
# CanESM2
set outfile4b = label_int_z500_historical_CanESM2_19660101-20051231
# HadGEM2-CC
set outfile5b = label_int_z500_historical_HadGEM2-CC_19660101-20051130
# CNRM-CM5
set outfile6b = label_int_z500_historical_CNRM-CM5_19660101-20051231
# IPSL-CM5A-LR
set outfile7b = label_int_z500_historical_IPSL-CM5A-LR_19660101-20051231
# IPSL-CM5A-MR
set outfile8b = label_int_z500_historical_IPSL-CM5A-MR_19660101-20051231
# MIROC5
set outfile9b = label_int_z500_historical_MIROC5_19660101-20051231
# MIROC-ESM-CHEM
set outfile10b = label_int_z500_historical_MIROC-ESM-CHEM_19660101-20051231
# MIROC-ESM
set outfile11b = label_int_z500_historical_MIROC-ESM_19660101-20051231
# bcc-csm1-1
set outfile12b = label_int_z500_historical_bcc-csm1-1_19660101-20051231
# CCSM4 
set outfile13b = label_int_z500_historical_CCSM4_19660101-20051231
# MPI-ESM-LR 
set outfile14b = label_int_z500_historical_MPI-ESM-LR_19660101-20051231
#
set outfile15b = label_int_z500_historical_BNU-ESM_19660101-20051231
#
set outfile16b = label_int_z500_historical_CMCC-CM_19660101-20051231
#
set outfile17b = label_int_z500_historical_IPSL-CM5B-LR_19660101-20051231
#
set outfile18b = label_int_z500_historical_MPI-ESM-MR_19660101-20051231
#
# Blocking frequency Monthly mean annual cycle ////////////////
#
# NNR 
set outfile1c = annualcycle_int_z500_historical_NNR_19660101-20051231
# MRI-CGCM3 
set outfile2c = annualcycle_int_z500_historical_MRI-CGCM3_19660101-20051231
# NorESM1-M
set outfile3c = annualcycle_int_z500_historical_NorESM1-M_19660101-20051231
# CanESM2
set outfile4c = annualcycle_int_z500_historical_CanESM2_19660101-20051231
# HadGEM2-CC
set outfile5c = annualcycle_int_z500_historical_HadGEM2-CC_19660101-20051130
# CNRM-CM5
set outfile6c = annualcycle_int_z500_historical_CNRM-CM5_19660101-20051231
# IPSL-CM5A-LR
set outfile7c = annualcycle_int_z500_historical_IPSL-CM5A-LR_19660101-20051231
# IPSL-CM5A-MR
set outfile8c = annualcycle_int_z500_historical_IPSL-CM5A-MR_19660101-20051231
# MIROC5
set outfile9c = annualcycle_int_z500_historical_MIROC5_19660101-20051231
# MIROC-ESM-CHEM
set outfile10c = annualcycle_int_z500_historical_MIROC-ESM-CHEM_19660101-20051231
# MIROC-ESM
set outfile11c = annualcycle_int_z500_historical_MIROC-ESM_19660101-20051231
# bcc-csm1-1
set outfile12c = annualcycle_int_z500_historical_bcc-csm1-1_19660101-20051231
# CCSM4 
set outfile13c = annualcycle_int_z500_historical_CCSM4_19660101-20051231
# MPI-ESM-LR 
set outfile14c = annualcycle_int_z500_historical_MPI-ESM-LR_19660101-20051231
#
set outfile15c = annualcycle_int_z500_historical_BNU-ESM_19660101-20051231
#
set outfile16c = annualcycle_int_z500_historical_CMCC-CM_19660101-20051231
#
set outfile17c = annualcycle_int_z500_historical_IPSL-CM5B-LR_19660101-20051231
#
set outfile18c = annualcycle_int_z500_historical_MPI-ESM-MR_19660101-20051231
#
# Number of events by duration distribution  ////////////////
#
# NNR 
set outfile1d = ddur_int_z500_historical_NNR_19660101-20051231
# MRI-CGCM3 
set outfile2d = ddur_int_z500_historical_MRI-CGCM3_19660101-20051231
# NorESM1-M
set outfile3d = ddur_int_z500_historical_NorESM1-M_19660101-20051231
# CanESM2
set outfile4d = ddur_int_z500_historical_CanESM2_19660101-20051231
# HadGEM2-CC
set outfile5d = ddur_int_z500_historical_HadGEM2-CC_19660101-20051130
# CNRM-CM5
set outfile6d = ddur_int_z500_historical_CNRM-CM5_19660101-20051231
# IPSL-CM5A-LR
set outfile7d = ddur_int_z500_historical_IPSL-CM5A-LR_19660101-20051231
# IPSL-CM5A-MR
set outfile8d = ddur_int_z500_historical_IPSL-CM5A-MR_19660101-20051231
# MIROC5
set outfile9d = ddur_int_z500_historical_MIROC5_19660101-20051231
# MIROC-ESM-CHEM
set outfile10d = ddur_int_z500_historical_MIROC-ESM-CHEM_19660101-20051231
# MIROC-ESM
set outfile11d = ddur_int_z500_historical_MIROC-ESM_19660101-20051231
# bcc-csm1-1
set outfile12d = ddur_int_z500_historical_bcc-csm1-1_19660101-20051231
# CCSM4 
set outfile13d = ddur_int_z500_historical_CCSM4_19660101-20051231
# MPI-ESM-LR
set outfile14d = ddur_int_z500_historical_MPI-ESM-LR_19660101-20051231
#
set outfile15d = ddur_int_z500_historical_BNU-ESM_19660101-20051231
#
set outfile16d = ddur_int_z500_historical_CMCC-CM_19660101-20051231
#
set outfile17d = ddur_int_z500_historical_IPSL-CM5B-LR_19660101-20051231
#
set outfile18d = ddur_int_z500_historical_MPI-ESM-MR_19660101-20051231
#
# Directories ////////////////////////////////////////////////
#
set CurDir  =  /aos/home/edunn/ANLY_CMIP5
set DatDir  =  /storage2/edunn/CMIP5
set SrcDir  =  ${CurDir}/BLOCK_HISTORICAL
cd $SrcDir
rm -Rf data*
rm -Rf fort.*
rm -Rf *.exe
#
#######################################################
ln -fs ${DatDir}/${infile1a}.dat    fort.11
ln -fs ${DatDir}/${infile2a}.dat    fort.12
ln -fs ${DatDir}/${infile3a}.dat    fort.13
ln -fs ${DatDir}/${infile4a}.dat    fort.14
ln -fs ${DatDir}/${infile5a}.dat    fort.15
ln -fs ${DatDir}/${infile6a}.dat    fort.16
ln -fs ${DatDir}/${infile7a}.dat    fort.17
ln -fs ${DatDir}/${infile8a}.dat    fort.18
ln -fs ${DatDir}/${infile9a}.dat    fort.19
ln -fs ${DatDir}/${infile10a}.dat    fort.20
ln -fs ${DatDir}/${infile11a}.dat    fort.21
ln -fs ${DatDir}/${infile12a}.dat    fort.22
ln -fs ${DatDir}/${infile13a}.dat    fort.23
ln -fs ${DatDir}/${infile14a}.dat    fort.24
ln -fs ${DatDir}/${infile15a}.dat    fort.25
ln -fs ${DatDir}/${infile16a}.dat    fort.26
ln -fs ${DatDir}/${infile17a}.dat    fort.27
ln -fs ${DatDir}/${infile18a}.dat    fort.28
#
ln -fs ${DatDir}/${infile1b}.dat    fort.31
ln -fs ${DatDir}/${infile2b}.dat    fort.32
ln -fs ${DatDir}/${infile3b}.dat    fort.33
ln -fs ${DatDir}/${infile4b}.dat    fort.34
ln -fs ${DatDir}/${infile5b}.dat    fort.35
ln -fs ${DatDir}/${infile6b}.dat    fort.36
ln -fs ${DatDir}/${infile7b}.dat    fort.37
ln -fs ${DatDir}/${infile8b}.dat    fort.38
ln -fs ${DatDir}/${infile9b}.dat    fort.39
ln -fs ${DatDir}/${infile10b}.dat    fort.40
ln -fs ${DatDir}/${infile11b}.dat    fort.41
ln -fs ${DatDir}/${infile12b}.dat    fort.42
ln -fs ${DatDir}/${infile13b}.dat    fort.43
ln -fs ${DatDir}/${infile14b}.dat    fort.44
ln -fs ${DatDir}/${infile15b}.dat    fort.45
ln -fs ${DatDir}/${infile16b}.dat    fort.46
ln -fs ${DatDir}/${infile17b}.dat    fort.47
ln -fs ${DatDir}/${infile18b}.dat    fort.48
#
ln -fs ${DatDir}/${infile1c}.nc     data1.nc
ln -fs ${DatDir}/${infile2c}.nc     data2.nc
ln -fs ${DatDir}/${infile3c}.nc     data3.nc
ln -fs ${DatDir}/${infile4c}.nc     data4.nc
ln -fs ${DatDir}/${infile5c}.nc     data5.nc
ln -fs ${DatDir}/${infile6c}.nc     data6.nc
ln -fs ${DatDir}/${infile7c}.nc     data7.nc
ln -fs ${DatDir}/${infile8c}.nc     data8.nc
ln -fs ${DatDir}/${infile9c}.nc     data9.nc
ln -fs ${DatDir}/${infile10c}.nc     data10.nc
ln -fs ${DatDir}/${infile11c}.nc     data11.nc
ln -fs ${DatDir}/${infile12c}.nc     data12.nc
ln -fs ${DatDir}/${infile13c}.nc     data13.nc
ln -fs ${DatDir}/${infile14c}.nc     data14.nc
ln -fs ${DatDir}/${infile15c}.nc     data15.nc
ln -fs ${DatDir}/${infile16c}.nc     data16.nc
ln -fs ${DatDir}/${infile17c}.nc     data17.nc
ln -fs ${DatDir}/${infile18c}.nc     data18.nc
#
ln -fs ${DatDir}/${outfile1a}.dat    fort.51
ln -fs ${DatDir}/${outfile2a}.dat    fort.52
ln -fs ${DatDir}/${outfile3a}.dat    fort.53
ln -fs ${DatDir}/${outfile4a}.dat    fort.54
ln -fs ${DatDir}/${outfile5a}.dat    fort.55
ln -fs ${DatDir}/${outfile6a}.dat    fort.56
ln -fs ${DatDir}/${outfile7a}.dat    fort.57
ln -fs ${DatDir}/${outfile8a}.dat    fort.58
ln -fs ${DatDir}/${outfile9a}.dat    fort.59
ln -fs ${DatDir}/${outfile10a}.dat    fort.60
ln -fs ${DatDir}/${outfile11a}.dat    fort.61
ln -fs ${DatDir}/${outfile12a}.dat    fort.62
ln -fs ${DatDir}/${outfile13a}.dat    fort.63
ln -fs ${DatDir}/${outfile14a}.dat    fort.64
ln -fs ${DatDir}/${outfile15a}.dat    fort.65
ln -fs ${DatDir}/${outfile16a}.dat    fort.66
ln -fs ${DatDir}/${outfile17a}.dat    fort.67
ln -fs ${DatDir}/${outfile18a}.dat    fort.68
#
ln -fs ${DatDir}/${outfile1b}.dat    fort.71
ln -fs ${DatDir}/${outfile2b}.dat    fort.72
ln -fs ${DatDir}/${outfile3b}.dat    fort.73
ln -fs ${DatDir}/${outfile4b}.dat    fort.74
ln -fs ${DatDir}/${outfile5b}.dat    fort.75
ln -fs ${DatDir}/${outfile6b}.dat    fort.76
ln -fs ${DatDir}/${outfile7b}.dat    fort.77
ln -fs ${DatDir}/${outfile8b}.dat    fort.78
ln -fs ${DatDir}/${outfile9b}.dat    fort.79
ln -fs ${DatDir}/${outfile10b}.dat    fort.80
ln -fs ${DatDir}/${outfile11b}.dat    fort.81
ln -fs ${DatDir}/${outfile12b}.dat    fort.82
ln -fs ${DatDir}/${outfile13b}.dat    fort.83
ln -fs ${DatDir}/${outfile14b}.dat    fort.84
ln -fs ${DatDir}/${outfile15b}.dat    fort.85
ln -fs ${DatDir}/${outfile16b}.dat    fort.86
ln -fs ${DatDir}/${outfile17b}.dat    fort.87
ln -fs ${DatDir}/${outfile18b}.dat    fort.88
#
ln -fs ${DatDir}/${outfile1c}.dat    fort.91
ln -fs ${DatDir}/${outfile2c}.dat    fort.92
ln -fs ${DatDir}/${outfile3c}.dat    fort.93
ln -fs ${DatDir}/${outfile4c}.dat    fort.94
ln -fs ${DatDir}/${outfile5c}.dat    fort.95
ln -fs ${DatDir}/${outfile6c}.dat    fort.96
ln -fs ${DatDir}/${outfile7c}.dat    fort.97
ln -fs ${DatDir}/${outfile8c}.dat    fort.98
ln -fs ${DatDir}/${outfile9c}.dat    fort.99
ln -fs ${DatDir}/${outfile10c}.dat    fort.100
ln -fs ${DatDir}/${outfile11c}.dat    fort.101
ln -fs ${DatDir}/${outfile12c}.dat    fort.102
ln -fs ${DatDir}/${outfile13c}.dat    fort.103
ln -fs ${DatDir}/${outfile14c}.dat    fort.104
ln -fs ${DatDir}/${outfile15c}.dat    fort.105
ln -fs ${DatDir}/${outfile16c}.dat    fort.106
ln -fs ${DatDir}/${outfile17c}.dat    fort.107
ln -fs ${DatDir}/${outfile18c}.dat    fort.108
#
ln -fs ${DatDir}/${outfile1d}.dat    fort.111
ln -fs ${DatDir}/${outfile2d}.dat    fort.112
ln -fs ${DatDir}/${outfile3d}.dat    fort.113
ln -fs ${DatDir}/${outfile4d}.dat    fort.114
ln -fs ${DatDir}/${outfile5d}.dat    fort.115
ln -fs ${DatDir}/${outfile6d}.dat    fort.116
ln -fs ${DatDir}/${outfile7d}.dat    fort.117
ln -fs ${DatDir}/${outfile8d}.dat    fort.118
ln -fs ${DatDir}/${outfile9d}.dat    fort.119
ln -fs ${DatDir}/${outfile10d}.dat    fort.120
ln -fs ${DatDir}/${outfile11d}.dat    fort.121
ln -fs ${DatDir}/${outfile12d}.dat    fort.122
ln -fs ${DatDir}/${outfile13d}.dat    fort.123
ln -fs ${DatDir}/${outfile14d}.dat    fort.124
ln -fs ${DatDir}/${outfile15d}.dat    fort.125
ln -fs ${DatDir}/${outfile16d}.dat    fort.126
ln -fs ${DatDir}/${outfile17d}.dat    fort.127
ln -fs ${DatDir}/${outfile18d}.dat    fort.128
#######################################################
#linking subroutines
make
# run the program
./e.bindex.exe
#
