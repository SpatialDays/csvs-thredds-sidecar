#!/bin/bash
azcopy copy "https://csvsdata.blob.core.windows.net/csvs-netcdf/cru/?$SAS_TOKEN" /usr/local/cru/ --recursive=true --from-to BlobLocal --as-subdir=False
