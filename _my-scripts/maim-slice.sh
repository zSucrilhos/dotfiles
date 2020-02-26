#!/bin/bash
file="/home/zsucrilhos/Screenshots/slice_$(date "+%Y-%m-%d_%H-%M-%S").png"
maim -u -f png -s $file
dunstify -u critical "System" "Slice saved!"
xclip -selection c -t "image/png" -i $file

