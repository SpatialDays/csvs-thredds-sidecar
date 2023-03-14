#!/bin/bash

# daily data part 1
azcopy copy "https://csvsdata.blob.core.windows.net/csvs-netcdf/daily/?$SAS_TOKEN" /usr/local/daily-1-data/ --overwrite=false --recursive=true --exclude-pattern "ERA5_daily_mean_m*" --exclude-pattern "ERA5_daily_mean_s*" --exclude-pattern "ERA5_daily_mean_SST*" --from-to BlobLocal --as-subdir=False &&

# daily data part 2
azcopy copy "https://csvsdata.blob.core.windows.net/csvs-netcdf/daily/?$SAS_TOKEN" /usr/local/daily-2-data/ --overwrite=false --recursive=true --include-pattern "ERA5_daily_mean_ms" --include-pattern "ERA5_daily_mean_soil_temp_*" --include-pattern "ERA5_daily_mean_SST*" --from-to BlobLocal --as-subdir=False &&

# daily data part 3
azcopy copy "https://csvsdata.blob.core.windows.net/csvs-netcdf/daily/?$SAS_TOKEN" /usr/local/daily-3-data/ --overwrite=false --recursive=true --exclude-pattern "ERA5_daily_mean_2mTemp/*" --exclude-pattern "ERA5_daily_mean_RH/*" --exclude-pattern "ERA5_daily_mean_TotalWind/*" --exclude-pattern "ERA5_daily_mean_mslp/*" --exclude-pattern "ERA5_daily_mean_soil_temp_L1/*" --exclude-pattern "ERA5_daily_mean_SST/*" --from-to BlobLocal --as-subdir=False &&

# monthly data
mkdir -p /usr/local/monthly-yearly-data/monthly &&
azcopy copy "https://csvsdata.blob.core.windows.net/csvs-netcdf/monthly/?$SAS_TOKEN" /usr/local/monthly-yearly-data/monthly --overwrite=false --recursive=true --from-to BlobLocal --as-subdir=False &&

# 30 yeras average data
mkdir -p /usr/local/monthly-yearly-data/30year &&
azcopy copy "https://csvsdata.blob.core.windows.net/csvs-netcdf/30year/?$SAS_TOKEN" /usr/local/monthly-yearly-data/30year --overwrite=false --recursive=true --from-to BlobLocal --as-subdir=False 