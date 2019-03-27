#!/usr/bin/env dash

TEXT=$(amixer get Master | grep -o -- '-\?[[:digit:]]\{1,2\}.[[:digit:]]\{2\}dB')
TOOLTIP=$(amixer get Master | grep -o '\[-\?[[:digit:]]\{1,2\}.[[:digit:]]\{2\}dB\] \[\(on\|off\)\]')
case $(amixer get Master | grep -o '\[\(on\|off\)\]') in
	'[on]') CLASS=unmuted;;
	'[off]') CLASS=muted;;
	*) CLASS=error
esac
PERCENTAGE=$(amixer get Master | grep -o '[[:digit:]]\{1,3\}%' | sed s/%//)
echo "{\"text\": \"$TEXT\", \"tooltip\": \"$TOOLTIP\", \"class\": \"$CLASS\", \"percentage\": $PERCENTAGE}"
