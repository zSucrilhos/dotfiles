#!/bin/bash

RESOLUTION=$(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/')
echo $RESOLUTION
maim --hidecursor -m 1 -s ~/Screenshots/$(date "+%Y-%m-%d_%H-%M-%S")_$RESOLUTION.png
dunstify -u normal "System" "Screenshot saved!"

