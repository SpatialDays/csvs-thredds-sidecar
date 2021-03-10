# csvs-thredds-sidecar

This download all the ERA5 and ERA5-Land data in each of their corresponding paths, since there is a limit of 200GB for each of the persistent volumes.

## ERA5

### ERA5 Daily 1

`/usr/local/daily-1-data/`

- mean_2mTemp
- mean_RH
- mean_TotalWind

### ERA5 Daily 2

`/usr/local/daily-2-data/`

- mean_mslp
- mean_soil_temp_L1
- mean_SST

### ERA5 Daily 3

`/usr/local/daily-3-data/`

- mean_soil_water_L1
- mean_sol_rad
- total_precipitation

### ERA5 Monthly and 30 years average

Contains all monthly data and 30 years average datasets in:

`/usr/local/monthly-yearly-data/monthly`

`/usr/local/monthly-yearly-data/30year/`

## ERA5-Land

### ERA5-Land Daily 1

`/usr/local/era5-land/daily-1-data/`

- mean_2mTemp
- mean_RH

### ERA5-Land Daily 2

`/usr/local/era5-land/daily-2-data/`

- mean_TotalWind
- total_precipitation

### ERA5-Land Monthly and 30 years average

Contains all monthly data and 30 years average datasets in:

`/usr/local/era5-land/monthly-yearly-data/monthly`

`/usr/local/era5-land/monthly-yearly-data/30year/`
