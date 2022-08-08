#!/bin/csh
# Shell code for running SKSanomaly.F
# for CMIP5 model data and NNR
#
# z500 data ///////////////////////////////////////////
# 
# NNR 
set infile1 = int_z500_zg_day_NNR_19660101-20051231
# MRI-CGCM3
set infile2 = int_z500_zg_day_MRI-CGCM3_historical_r1i1p1_19660101-20051231
# NorESM1-M
set infile3 = int_z500_zg_day_NorESM1-M_historical_r1i1p1_19660101-20051231
# CanESM2
set infile4 = int_z500_zg_day_CanESM2_historical_r1i1p1_19660101-20051231
# HadGEM2-CC
set infile5 = int_z500_zg_day_HadGEM2-CC_historical_r1i1p1_19660101-20051130
# CNRM-CM5
set infile6 = int_z500_zg_day_CNRM-CM5_historical_r1i1p1_19660101-20051231
# IPSL-CM5A-LR
set infile7 = int_z500_zg_day_IPSL-CM5A-LR_historical_r2i1p1_19660101-20051231
# IPSL-CM5A-MR
set infile8 = int_z500_zg_day_IPSL-CM5A-MR_historical_r1i1p1_19660101-20051231
# MIROC5
set infile9 = int_z500_zg_day_MIROC5_historical_r1i1p1_19660101-20051231
# MIROC-ESM-CHEM
set infile10 = int_z500_zg_day_MIROC-ESM-CHEM_historical_r1i1p1_19660101-20051231
# MIROC-ESM
set infile11 = int_z500_zg_day_MIROC-ESM_historical_r1i1p1_19660101-20051231
# bcc-csm1-1
set infile12 = int_z500_zg_day_bcc-csm1-1_historical_r1i1p1_19660101-20051231
# CCSM4 
set infile13 = int_z500_zg_day_CCSM4_historical_r6i1p1_19660101-20051231
# MPI-ESM-LR
set infile14 = int_z500_zg_day_MPI-ESM-LR_historical_r1i1p1_19660101-20051231
#
set infile15 = int_z500_zg_day_BNU-ESM_historical_r1i1p1_19660101-20051231
#
set infile16 = int_z500_zg_day_CMCC-CM_historical_r1i1p1_19660101-20051231
#
set infile17 = int_z500_zg_day_IPSL-CM5B-LR_historical_r1i1p1_19660101-20051231
#
set infile18 = int_z500_zg_day_MPI-ESM-MR_historical_r1i1p1_19660101-20051231
#
# Anomaly data ////////////////////////////////////////
#
# NNR 
set outfile1a = SKS_int_z500_historical_NNR_19660101-20051231
# MRI-CGCM3 
set outfile2a = SKS_int_z500_historical_MRI-CGCM3_19660101-20051231
# NorESM1-M
set outfile3a = SKS_int_z500_historical_NorESM1-M_19660101-20051231
# CanESM2
set outfile4a = SKS_int_z500_historical_CanESM2_19660101-20051231
# HadGEM2-CC
set outfile5a = SKS_int_z500_historical_HadGEM2-CC_19660101-20051130
# CNRM-CM5
set outfile6a = SKS_int_z500_historical_CNRM-CM5_19660101-20051231
# IPSL-CM5A-LR
set outfile7a = SKS_int_z500_historical_IPSL-CM5A-LR_19660101-20051231
# IPSL-CM5A-MR
set outfile8a = SKS_int_z500_historical_IPSL-CM5A-MR_19660101-20051231
# MIROC5
set outfile9a = SKS_int_z500_historical_MIROC5_19660101-20051231
# MIROC-ESM-CHEM
set outfile10a = SKS_int_z500_historical_MIROC-ESM-CHEM_19660101-20051231
# MIROC-ESM
set outfile11a = SKS_int_z500_historical_MIROC-ESM_19660101-20051231
# bcc-csm1-1
set outfile12a = SKS_int_z500_historical_bcc-csm1-1_19660101-20051231
# CCSM4 
set outfile13a = SKS_int_z500_historical_CCSM4_19660101-20051231
# CCSM4 
set outfile14a = SKS_int_z500_historical_MPI-ESM-LR_19660101-20051231
#
set outfile15a = SKS_int_z500_historical_BNU-ESM_19660101-20051231
#
set outfile16a = SKS_int_z500_historical_CMCC-CM_19660101-20051231
#
set outfile17a = SKS_int_z500_historical_IPSL-CM5B-LR_19660101-20051231
#
set outfile18a = SKS_int_z500_historical_MPI-ESM-MR_19660101-20051231
#
# Threshold data ////////////////////////////////////////
#
# NNR 
set outfile1b = thresholds_SKS_int_z500_historical_NNR_19660101-20051231
# MRI-CGCM3 
set outfile2b = thresholds_SKS_int_z500_historical_MRI-CGCM3_19660101-20051231
# NorESM1-M
set outfile3b = thresholds_SKS_int_z500_historical_NorESM1-M_19660101-20051231
# CanESM2
set outfile4b = thresholds_SKS_int_z500_historical_CanESM2_19660101-20051231
# HadGEM2-CC
set outfile5b = thresholds_SKS_int_z500_historical_HadGEM2-CC_19660101-20051130
# CNRM-CM5
set outfile6b = thresholds_SKS_int_z500_historical_CNRM-CM5_19660101-20051231
# IPSL-CM5A-LR
set outfile7b = thresholds_SKS_int_z500_historical_IPSL-CM5A-LR_19660101-20051231
# IPSL-CM5A-MR
set outfile8b = thresholds_SKS_int_z500_historical_IPSL-CM5A-MR_19660101-20051231
# MIROC5
set outfile9b = thresholds_SKS_int_z500_historical_MIROC5_19660101-20051231
# MIROC-ESM-CHEM
set outfile10b = thresholds_SKS_int_z500_historical_MIROC-ESM-CHEM_19660101-20051231
# MIROC-ESM
set outfile11b = thresholds_SKS_int_z500_historical_MIROC-ESM_19660101-20051231
# bcc-csm1-1
set outfile12b = thresholds_SKS_int_z500_historical_bcc-csm1-1_19660101-20051231
# CCSM4 
set outfile13b = thresholds_SKS_int_z500_historical_CCSM4_19660101-20051231
# MPI-ESM-LR
set outfile14b = thresholds_SKS_int_z500_historical_MPI-ESM-LR_19660101-20051231
#
set outfile15b = thresholds_SKS_int_z500_historical_BNU-ESM_19660101-20051231
#
set outfile16b = thresholds_SKS_int_z500_historical_CMCC-CM_19660101-20051231
#
set outfile17b = thresholds_SKS_int_z500_historical_IPSL-CM5B-LR_19660101-20051231
#
set outfile18b = thresholds_SKS_int_z500_historical_MPI-ESM-MR_19660101-20051231
#
# Directories ////////////////////////////////////////////
#
set CurDir  =  /aos/home/edunn/ANLY_CMIP5
set DatDir  =  /storage2/edunn/CMIP5
set SrcDir  =  ${CurDir}/SKS_HISTORICAL
cd $SrcDir
rm -Rf data*
rm -Rf fort.*
rm -Rf *.exe
#
#######################################################
ln -fs ${DatDir}/${infile1}.nc     data1.nc
ln -fs ${DatDir}/${infile2}.nc     data2.nc
ln -fs ${DatDir}/${infile3}.nc     data3.nc
ln -fs ${DatDir}/${infile4}.nc     data4.nc
ln -fs ${DatDir}/${infile5}.nc     data5.nc
ln -fs ${DatDir}/${infile6}.nc     data6.nc
ln -fs ${DatDir}/${infile7}.nc     data7.nc
ln -fs ${DatDir}/${infile8}.nc     data8.nc
ln -fs ${DatDir}/${infile9}.nc     data9.nc
ln -fs ${DatDir}/${infile10}.nc     data10.nc
ln -fs ${DatDir}/${infile11}.nc     data11.nc
ln -fs ${DatDir}/${infile12}.nc     data12.nc
ln -fs ${DatDir}/${infile13}.nc     data13.n
ln -fs ${DatDir}/${infile14}.nc     data14.nc
ln -fs ${DatDir}/${infile15}.nc     data15.nc
ln -fs ${DatDir}/${infile16}.nc     data16.nc
ln -fs ${DatDir}/${infile17}.nc     data17.nc
ln -fs ${DatDir}/${infile18}.nc     data18.nc
#
ln -fs ${DatDir}/${outfile1a}.dat    fort.11
ln -fs ${DatDir}/${outfile2a}.dat    fort.12
ln -fs ${DatDir}/${outfile3a}.dat    fort.13
ln -fs ${DatDir}/${outfile4a}.dat    fort.14
ln -fs ${DatDir}/${outfile5a}.dat    fort.15
ln -fs ${DatDir}/${outfile6a}.dat    fort.16
ln -fs ${DatDir}/${outfile7a}.dat    fort.17
ln -fs ${DatDir}/${outfile8a}.dat    fort.18
ln -fs ${DatDir}/${outfile9a}.dat    fort.19
ln -fs ${DatDir}/${outfile10a}.dat    fort.20
ln -fs ${DatDir}/${outfile11a}.dat    fort.21
ln -fs ${DatDir}/${outfile12a}.dat    fort.22
ln -fs ${DatDir}/${outfile13a}.dat    fort.23
ln -fs ${DatDir}/${outfile14a}.dat    fort.24
ln -fs ${DatDir}/${outfile15a}.dat    fort.25
ln -fs ${DatDir}/${outfile16a}.dat    fort.26
ln -fs ${DatDir}/${outfile17a}.dat    fort.27
ln -fs ${DatDir}/${outfile18a}.dat    fort.28
#
ln -fs ${DatDir}/${outfile1b}.dat    fort.31
ln -fs ${DatDir}/${outfile2b}.dat    fort.32
ln -fs ${DatDir}/${outfile3b}.dat    fort.33
ln -fs ${DatDir}/${outfile4b}.dat    fort.34
ln -fs ${DatDir}/${outfile5b}.dat    fort.35
ln -fs ${DatDir}/${outfile6b}.dat    fort.36
ln -fs ${DatDir}/${outfile7b}.dat    fort.37
ln -fs ${DatDir}/${outfile8b}.dat    fort.38
ln -fs ${DatDir}/${outfile9b}.dat    fort.39
ln -fs ${DatDir}/${outfile10b}.dat    fort.40
ln -fs ${DatDir}/${outfile11b}.dat    fort.41
ln -fs ${DatDir}/${outfile12b}.dat    fort.42
ln -fs ${DatDir}/${outfile13b}.dat    fort.43
ln -fs ${DatDir}/${outfile14b}.dat    fort.44
ln -fs ${DatDir}/${outfile15b}.dat    fort.45
ln -fs ${DatDir}/${outfile16b}.dat    fort.46
ln -fs ${DatDir}/${outfile17b}.dat    fort.47
ln -fs ${DatDir}/${outfile18b}.dat    fort.48
#######################################################
#linking subroutines and compiling
make
# run the program
./SKSanomaly.exe
#
