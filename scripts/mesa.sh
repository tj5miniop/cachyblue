dnf -y copr enable xxmitsu/mesa-git
dnf install mesa 
dnf -y copr disable xxmitsu/mesa-git

echo 'mesa drivers (git version) have been installed)