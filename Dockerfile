FROM python:3.7.9-slim-buster

RUN apt-get update && apt-get install -y wget && \
    mkdir /azcopy && cd /azcopy && \
    wget https://aka.ms/downloadazcopy-v10-linux && \
    tar -xvf downloadazcopy-v10-linux && \
    rm downloadazcopy-v10-linux && \
    cp /azcopy/azcopy_linux_amd64*/azcopy /usr/bin/azcopy && \
    chmod 755 /usr/bin/azcopy && \
    apt-get remove -y wget && apt-get autoremove -y && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN mkdir /scripts


COPY scripts/ /scripts/

RUN find /scripts/ -type f -iname "*.sh" -exec chmod +x {} \;
