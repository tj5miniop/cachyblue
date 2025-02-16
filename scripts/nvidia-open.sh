#Add RPM Fusion repos
dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf5 -y update --refresh 
#This Updates the NVIDIA Drivers to the latest 'open' kernel module variant

dnf5 -y install rpmfusion-nonfree-release-tainted 
dnf5 -y install akmod-nvidia-open
