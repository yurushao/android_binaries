#!/bin/bash

echo "Pushing files to your device ..."
adb push ./strace /data/local/tmp/strace
adb push ./busybox-armv7l /data/local/tmp/busybox
adb push ./install_.sh /data/local/tmp/install_.sh

echo "Installing binaries to /system/bin/ ..."
adb shell chmod 755 /data/local/tmp/install_.sh
adb shell su -c /data/local/tmp/install_.sh
