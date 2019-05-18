#!/bin/bash
#
# This script builds custom debian live images, using live-build.
#
# Let there be image.
#pv -p 
lb build

# List devices, if lsscsi is available. Should hit usb drives only..
lsscsi 6>/dev/null || true

#Clean the house
#lb clean Also removes the iso file..

echo 'Time to "burn", make sure you use the right drive:'
echo " start by using ONLY IF /dev/sdb !!! ./05.sh"