FROM ghcr.io/ublue-os/silverblue-main:latest


### Base Image / AMD/INTEL GPU Support
### MODIFICATIONS
## make modifications desired in your image and install packages by modifying the build.sh script
## the following RUN directive does all the things required to run "build.sh" as recommended.

COPY scripts/build.sh /tmp/build.sh
COPY scripts/mesa.sh /tmp/mesa.sh
#COPY systemfiles/ /

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit
    
