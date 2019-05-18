# silentcloud-kiosk


This is the configuration tree for:

  Debian SilentCloud-Kiosk...
  
Must be root when building.

Pre req:
Working docker.
Network for getting .deb and kernel
Folder at / not neccesarily on main system Can be on external drive.



A software called live-build can be used to automatically build images from
this configuration tree.

live-build can be obtained from <http://live-systems.org/devel/live-build/>.
On Debian based systems, live-build can be installed with:

  # apt-get install live-build

live-build can be used to build this image with the following command executed
in this directory::

  # lb build

More information about live-build and the Live Systems project can be found on
its homepage at <http://live-systems.org/> and in the manual at
<http://live-systems.org/manual/>.
