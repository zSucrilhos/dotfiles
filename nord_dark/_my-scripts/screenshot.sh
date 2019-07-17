#!/bin/bash
file="/home/zsucrilhos/Screenshots/screenshot_$(date "+%Y-%m-%d_%H-%M-%S").png"
maim -u -f png $file
dunstify -u critical -i $file "System" "Screenshot saved!"
xclip -selection c -t "image/png" -i $file
