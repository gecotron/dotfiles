#!/bin/sh

volume() {
	awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master)
}

weather() {
	curl --silent /dev/null -v "wttr.in/ottawa?format=3" 
}

clock() {
	date +%H:%M:%S
}

battery() {
	cat /sys/class/power_supply/BAT0/capacity
}

window() {
	xprop -id $(xprop -root _NET_ACTIVE_WINDOW | cut -d ' ' -f 5) WM_NAME | sed -e 's/.*"\(.*\)".*/\1/'
}

while true; do
	BAR_INPUT="%{l} VOLUME : $(volume) %{c} $(window) %{r} LIFE : $(battery)%% TIME : $(clock)"
	echo $BAR_INPUT
	sleep 0.1
done
