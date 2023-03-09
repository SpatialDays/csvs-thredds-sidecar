#!/bin/bash

# daily data part 1
azcopy copy "https://csvsdata.blob.core.windows.net/csvs-netcdf/daily/?$SAS_TOKEN" /usr/local/daily-1-data/
--recursive=true
--exclude ERA5_daily_mean_m*
--exclude ERA5_daily_mean_s*
--exclude ERA5_daily_mean_SST* &&

# daily data part 2
azcopy copy "https://csvsdata.blob.core.windows.net/csvs-netcdf/daily/?$SAS_TOKEN" /usr/local/daily-2-data/
--recursive=true
--exclude "" --include ERA5_daily_mean_ms --include ERA5_daily_mean_soil_temp_*
--include ERA5_daily_mean_SST* &&

# daily data part 3
azcopy copy "https://csvsdata.blob.core.windows.net/csvs-netcdf/daily/?$SAS_TOKEN" /usr/local/daily-3-data/
--recursive=true
--exclude ERA5_daily_mean_2mTemp/*
--exclude ERA5_daily_mean_RH/*
--exclude ERA5_daily_mean_TotalWind/*
--exclude ERA5_daily_mean_mslp/*
--exclude ERA5_daily_mean_soil_temp_L1/*
--exclude ERA5_daily_mean_SST/* &&

# monthly data
mkdir -p /usr/local/monthly-yearly-data/monthly &&
azcopy copy "https://csvsdata.blob.core.windows.net/csvs-netcdf/monthly/?$SAS_TOKEN" /usr/local/monthly-yearly-data/monthly --recursive=true &&

# 30 yeras average data
mkdir -p /usr/local/monthly-yearly-data/30year &&
azcopy copy "https://csvsdata.blob.core.windows.net/csvs-netcdf/30year/?$SAS_TOKEN" /usr/local/monthly-yearly-data/30year --recursive=true