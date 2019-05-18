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

#echo task-lxde-desktop >config/package-lists/my-live.list.chroot

echo \
	acpid \
	chromium \
	>config/package-lists/tools.list.chroot
