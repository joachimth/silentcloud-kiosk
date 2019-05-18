#!/bin/bash
#
# This script builds custom debian live images, using live-build.
# & putter ting i baggrunden, som en slags ny pid
#
testfile=$(mktemp testNoClobberDate-XXXXXX)
foo &> |tee /dev/tty >>$testfile

while true; do echo -n .; sleep 1; done &
trap 'kill $!' SIGTERM SIGKILL

echo "...Getting misc apts..."
apt -y install pv #$#&>$testfile
cd /media/sctry #&>$testfile
echo done

#KILLING Background pid.
kill $!
