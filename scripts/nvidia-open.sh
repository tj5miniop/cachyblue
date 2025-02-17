# Use Negativo 17s repos to get the latest nvidia driver
dnf -y config-manager --add-repo=https://negativo17.org/repos/fedora-nvidia.repo
dnf -y update
dnf -y install nvidia-driver nvidia-driver-libs.i686 nvidia-driver-cuda nvidia-settings