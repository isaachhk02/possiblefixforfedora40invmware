# Posible theoric problem about Fedora 40 in VMware Workstation with 3D acceleration in Windows 11

I see in vmware.log a errors on this log in relation with DirectX 12 i think what happens if change the renderer to DX11 or OpenGL?
And that works.

The problem of DirectX 12:
![image](https://github.com/user-attachments/assets/4c511ba4-2e30-459c-9806-ff607442c0fd)

Now with DirectX 11 can see now works good
![image](https://github.com/user-attachments/assets/533288e8-4c4e-4b57-9080-d5caf2eda9ba)
The log with DirectX 11
![image](https://github.com/user-attachments/assets/d2a4d1d6-f866-4eaf-b1b1-1d7f8ed35718)



Well.
# How to fix that?

You need go to AppData folder for that go to Start Menu and search for `%appdata%` and press enter. 
after that find the folder called VMware and open it
Open `preferences.ini` with notepad or other text editor.

and add this lines:

# Disable DirectX 12
`mks.enableDX12Renderer = "FALSE"`

# And enable DirectX 11 
`mks.enableDX11Renderer = "TRUE"`

You can use OpenGL to adding this line:
`mks.enableGLRenderer = "TRUE"`

And save the changes

Cross your fingers!

If the issue persists you can the lines before mentioned in the `vmx` file located on your Documents folder and `Virtual Machines` folder open the folder with the VM name
and open the vmx files
Example:
If the VM name it's Fedora 40 find the vmx file with that name and open with text editor

and write the lines before mentioned

# Warning: If you doesn't specify the lines correctly cannot use the VM! The only fix for revert changes it's open the `vmx` again and remove the lines before mentioned.
# You cannot specify two renderers ! for example if you enabled DX11 and OpenGL one only can be used
