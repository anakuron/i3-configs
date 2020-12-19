#!/bin/sh
# This shell script is PUBLIC DOMAIN. You may do whatever you want with it.

TOGGLE=$HOME/.toggle

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    xrandr --output eDP1 --panning 1920x1080 --scale 1.406x1.406
	xrandr --output HDMI1 --set "Broadcast RGB" "Full"
else
    rm $TOGGLE
    xrandr --output eDP1 --panning 1366x768 --scale 1x1
    xrandr --auto
fi
