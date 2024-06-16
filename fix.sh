#!/bin/bash
# by isaachhk02 (Isaac Ordoñez Fornós)

# Kill Xorg and Wayland process before update libdrm package
sudo killall Xorg
sudo killall Xwayland
echo "Updating libdrm (possible fix)"
sudo dnf install libdrm -y
echo "Done!"
startplasma
