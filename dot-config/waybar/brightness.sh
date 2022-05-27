#!/usr/bin/env dash

n=$(cat /sys/class/backlight/intel_backlight/brightness)
if test $1 = up
then
	echo $((n + 960)) > /sys/class/backlight/intel_backlight/brightness
elif test $1 = down
then
	echo $((n - 960)) > /sys/class/backlight/intel_backlight/brightness
fi
