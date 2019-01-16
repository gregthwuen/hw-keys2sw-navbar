#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread

# Taken over from https://github.com/beast-slayer/NavBar_Android-Pie-OP5, slightly modified:
# This Disables hw key backlight
echo 0 > /sys/class/leds/button-backlight/max_brightness
chmod 644 > /sys/class/leds/button-backlight/max_brightness
