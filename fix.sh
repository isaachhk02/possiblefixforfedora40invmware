#!/bin/bash
# by isaachhk02 (Isaac Ordoñez Fornós)

# Kill Xorg and Wayland process before update libdrm package
sudo dnf install sddm-x11 --allowerasing -y
echo "Updating vmware tools (possible fix)"
sudo dnf install open-vm-tools-test -y
echo "Done!"
startplasma-x11
