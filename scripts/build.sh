#!/bin/bash

set -ouex pipefail

#Updating Software
dnf5 -y update 
dnf5 -y clean all

echo 'Updated!' 

#Install CachyOS kernel 
dnf5 -y copr enable bieszczaders/kernel-cachyos
dnf5 -y update --refresh 
dnf5 -y remove kernel kernel-core kernel-modules kernel-modules-core kernel-modules-extra
dnf5 -y install kernel-cachyos --allowerasing

echo 'CachyOS Kernel Installed'

#Add extra stuff for performance 
dnf5 -y copr disable bieszczaders/kernel-cachyos
dnf5 -y copr enable bieszczaders/kernel-cachyos-addons 
dnf5 -y install cachyos-settings cachyos-kcm-settings uksmd cachyos-ananicy-rules ananicy-cpp --allowerasing
dnf5 -y copr disable biezczaders/kernel-cachyos-addons

echo 'Cachy OS Kernel Installed with Addons'

#Install MUTTER PERFORMANCE 'BUILD'
dnf5 -y copr enable execat/mutter-performance 
dnf5 -y update --refresh
dnf5 -y copr disable execat/mutter-performance 
echo 'Done'
