#!/bin/bash
#
# This script builds custom debian live images, using live-build.
#
lb config \
	--distribution stretch \
	--binary-images iso-hybrid \
	"$@"

echo task-kde-desktop >config/package-lists/my-live.list.chroot

echo \
	cryptsetup \
	curl \
	dosfstools \
	less \
	lsb-release \
	lshw \
	lvm2 \
	mdadm \
	net-tools \
	pciutils \
	smartmontools \
	usbutils \
	chromium \
	>config/package-lists/tools.list.chroot
