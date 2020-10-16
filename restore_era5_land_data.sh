#!/bin/bash

# daily data part 1
aws --endpoint-url=$S3_URL s3 sync s3://csvs-netcdf/ERA5-Land/daily/ /usr/local/era5-land/daily-1-data/ \
--exclude "*"
--include ERA5-Land_daily_mean_2mTemp/* \
--include ERA5-Land_daily_mean_RH/* && \

# daily data part 2
aws --endpoint-url=$S3_URL s3 sync s3://csvs-netcdf/ERA5-Land/daily/ /usr/local/era5-land/daily-2-data/ \
--exclude "*"
--include ERA5-Land_daily_mean_TotalWind/* \
--include ERA5-Land_daily_total_precipitation/* && \

# monthly data
mkdir /usr/local/era5-land/monthly-yearly-data/monthly &&
aws --endpoint-url=$S3_URL s3 sync s3://csvs-netcdf/ERA5-Land/monthly/ /usr/local/era5-land/monthly-yearly-data/monthly &&

# 30 yeras average data
mkdir /usr/local/era5-land/monthly-yearly-data/30year &&
aws --endpoint-url=$S3_URL s3 sync s3://csvs-netcdf/ERA5-Land/30year/ /usr/local/era5-land/monthly-yearly-data/30year
