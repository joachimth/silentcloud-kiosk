#!/bin/bash
#
# This script builds custom debian live images, using live-build.
#
# Let there be image.
#pv -p 
lb build

# List devices, if lsscsi is available.
lsscsi 2>/dev/null || true

echo 'Time to "burn", make sure you use the right drive:'
echo "  dd if=live-image-amd64.img of=/dev/sdX bs=4096 status=progress"