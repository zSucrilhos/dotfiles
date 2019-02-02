xrdb -merge ~/.Xresources

# startx bspwm|startx i3
case $2 in
    'i3') exec i3 ;;
    'bspwm') exec bspwm ;;
    *) exec i3;;
esac


