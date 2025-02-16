

#This Updates the NVIDIA Drivers to the latest 'open' kernel module variant

dnf5 -y install rpmfusion-nonfree-release-tainted 
dnf5 -y swap akmod-nvidia akmod-nvidia-open
