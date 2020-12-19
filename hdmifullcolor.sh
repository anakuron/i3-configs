#!/bin/bash
xrandr --verbose | grep -A 2 "Broadcast RGB"
xrandr --output HDMI1 --set "Broadcast RGB" "Full"
