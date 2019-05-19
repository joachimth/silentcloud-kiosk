#!/bin/bash
#
# This script builds custom debian live images, using live-build.
#
# Link our pretty little hooks.
for hook in config/hooks/*/*; do
	(cd "$(dirname "$hook")" && ln -s ../../../"$hook" ./ || true)
done

lb config \
	--distribution stretch \
	--binary-images iso-hybrid \
	"$@"

echo "lightdm i3" >config/package-lists/my-live.list.chroot

echo \
    kbd \
    lsb-release \
    chromium-shell \
    lxtask \
	acpid \
	cryptsetup \
	curl \
	lshw \
	net-tools \
	usbutils \
	>config/package-lists/tools.list.chroot
