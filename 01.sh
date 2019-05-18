#!/bin/bash
#
# This script builds custom debian live images, using live-build.
#
lb config \
	--distribution stretch \
	--binary-images iso-hybrid \
	"$@"
