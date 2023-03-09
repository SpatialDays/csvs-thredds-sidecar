#!/bin/bash
azcopy copy "https://csvsdata.blob.core.windows.net/csvs-netcdf/ERA5-Land/?$SAS_TOKEN" /usr/local/era5-land/ --recursive=true --from-to BlobLocal --as-subdir=False
