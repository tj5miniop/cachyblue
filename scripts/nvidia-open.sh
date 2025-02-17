#Add RPM Fusion repos
dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf -y update --refresh 
#This Updates the NVIDIA Drivers to the latest 'open' kernel module variant
dnf -y install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-tainted-$(rpm -E %fedora).noarch.rpm
dnf -y install akmod-nvidia-open
