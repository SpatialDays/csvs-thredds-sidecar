#!/bin/bash
azcopy copy "https://csvsdata.blob.core.windows.net/csvs-netcdf/TRMM/?$SAS_TOKEN" /usr/local/trmm/ --recursive=true --from-to BlobLocal --as-subdir=False
