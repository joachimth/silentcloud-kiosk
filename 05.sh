#!/bin/bash
#
# This script builds custom debian live images, using live-build.
#

echo 'Time to "burn", make sure you use the right drive:'

#lb sudo dd if=/dev/sdb | pv -s 2G | dd of=live-image-amd64.hybrid.iso bs=4096
cp live-image-amd64.hybrid.iso work.iso
dd if=work.iso of=/dev/sdb bs=4096 status=progress
