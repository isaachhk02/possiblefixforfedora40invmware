#!/bin/bash
# by isaachhk02 (Isaac Ordoñez Fornós)

# Kill Xorg process before update libdrm package
killall Xorg
echo "Updating libdrm (possible fix)"
sudo dnf install libdrm -y
echo "Done!"
startplasma
