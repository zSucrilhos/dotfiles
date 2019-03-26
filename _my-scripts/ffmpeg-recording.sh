#! /bin/bash

ffmpeg -video_size 1368x768 -framerate 25 -f x11grab -i :0.0+0,0 -f pulse -ac 2 -i default /home/zsucrilhos/Videos/recording$(date "+%Y-%m-%d_%H-%M-%S").mkv & dunstify -u normal "ffmpeg" "Recording started" 


