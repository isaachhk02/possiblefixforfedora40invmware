# Posible theoric problem about Fedora 40 in VMware Workstation with 3D acceleration

After make some changes like removing the next package:
# sddm-plasma and installing # sddm-x11 for force use Xorg and removing wayland i discover IT'S NOT VMware Tools and not it's Xorg and Wayland.
I discover plasma-workspace-x11 not installed and im installing now other package not installed it's xorg-server 
I tested and the same problem.

# It's the driver module "vmwgfx" if you write glxinfo | grep OpenGL

Can see SVGA3D Adapter
# Acceleration: No
VRAM: 1MB

<img src="https://github.com/isaachhk02/fixingvmware3dfedora40/blob/main/imgs/evidence2.png?raw=true" />

And probably freezes the Virtual Machine because VRAM have 1MB and not detect all.



# So that's a problem it's vmwgfx kernel module
