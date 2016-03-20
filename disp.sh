#!/bin/bash
SCRIPTNAME=disp.sh
case $1 in
        rotate)
                xrandr --output DVI-I-2 --rotate normal
                xrandr --output DVI-I-3 --rotate left
                xrandr --output DVI-I-2 --pos 0x0
                xrandr --output DVI-I-3 --pos 1920x-250
        ;;
        normal)
                xrandr --output DVI-I-2 --rotate normal
                xrandr --output DVI-I-3 --rotate normal
                xrandr --output DVI-I-2 --pos 0x0
                xrandr --output DVI-I-3 --pos 1920x0

        ;;
        *)
                echo "Usage: $SCRIPTNAME {rotate|normal}" >&2
                exit 3
        ;;
esac
