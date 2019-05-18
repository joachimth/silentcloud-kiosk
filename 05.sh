#!/bin/bash
#
# This script builds custom debian live images, using live-build.
#

echo 'Time to "burn", make sure you use the right drive:'
echo " OLD!!! dd if=live-image-amd64.img of=/dev/sdX bs=4096 status=progress"

sudo dd if=/dev/sdb | pv -s 2G | dd of=live-image-amd64.hybrid.iso bs=4096
