#!/bin/bash

dnf -y copr enable xxmitsu/mesa-git
dnf -y update
dnf -y copr disable xxmitsu/mesa-git

echo 'mesa drivers (git version) have been installed)