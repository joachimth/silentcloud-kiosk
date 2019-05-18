# silentcloud-kiosk

This is the configuration tree for:

  Debian SilentCloud-Kiosk...
  
Must be root when building.

Pre req:
Working docker.
Network for getting .deb and kernel
Perhaps this is neccesary: Folder at / not neccesarily on main system Can be on external drive.

A software called live-build can be used to automatically build images from
this configuration tree.

On Debian based systems, live-build can be installed with:

  # apt-get install live-build

live-build can be used to build this image with the following command executed
in this directory::

  # lb build
dd if=live-image-amd64.hybrid.iso of=/dev/sdX bs=4096 status=progress

