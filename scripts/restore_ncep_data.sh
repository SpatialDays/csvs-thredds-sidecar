#!/bin/bash
azcopy copy "https://csvsdata.blob.core.windows.net/csvs-netcdf/ncep/?$SAS_TOKEN" /usr/local/ncep/ --recursive=true --from-to BlobLocal --as-subdir=False
