#!/bin/sh

#userresources=$HOME/.Xresources
#usermodmap=$HOME/.Xmodmap
#sysresources=/etc/X11/xinit/.Xresources
#sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

#if [ -f $sysresources ]; then
#    xrdb -merge $sysresources
#fi

#if [ -f $sysmodmap ]; then
#    xmodmap $sysmodmap
#fi

#if [ -f "$userresources" ]; then
#    xrdb -merge "$userresources"
#fi

#if [ -f "$usermodmap" ]; then
#    xmodmap "$usermodmap"
#fi

# Start some nice programs

#if [ -d /etc/X11/xinit/xinitrc.d ] ; then
# for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
#  [ -x "$f" ] && . "$f"
# done
# unset f
#fi

#exec i3


# Here i3 is kept as default
session=${1:-i3}

case $session in
    i3|i3wm|i3-gaps           ) exec i3;;
#    kde               ) exec startkde;;
    bspwm               ) exec bspwm ;;
esac



