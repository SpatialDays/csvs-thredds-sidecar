#!/bin/bash
azcopy copy "https://csvsdata.blob.core.windows.net/csvs-netcdf/gpcp/?$SAS_TOKEN" /usr/local/gpcp/ --recursive=true --from-to BlobLocal --as-subdir=False
