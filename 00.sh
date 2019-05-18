#!/bin/bash
#
# This script builds custom debian live images, using live-build.
#

apt -y install lsscsi
apt -y install live-build

# List devices, if lsscsi is available.
lsscsi 2>/dev/null || true
