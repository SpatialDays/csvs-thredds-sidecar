#!/bin/bash
azcopy copy "https://csvsdata.blob.core.windows.net/csvs-netcdf/cmap/?$SAS_TOKEN" /usr/local/cmap/ --recursive=true --from-to BlobLocal --as-subdir=False
