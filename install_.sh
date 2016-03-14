#!/system/bin/sh

mount -o rw,remount /system

mv /data/local/tmp/strace /system/bin/strace
mv /data/local/tmp/busybox /system/bin/busybox

chmod 755 /system/bin/strace
chmod 755 /system/bin/busybox

