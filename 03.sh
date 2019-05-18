#!/bin/bash
#
# This script builds custom debian live images, using live-build.
#
# Link our pretty little hooks.
for hook in hooks/*/*; do
	(cd config/"$(dirname "$hook")" && ln -s ../../../"$hook" ./ || true)
done
