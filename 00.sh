#!/bin/bash
#
# This script builds custom debian live images, using live-build.
#
echo "Installing pre req"
apt -y install lsscsi
apt -y install live-build
