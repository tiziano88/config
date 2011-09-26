#!/bin/bash

xrandr --output LVDS --mode 1920x1080
xrandr --output HDMI-0 --mode 1280x1024 --left-of LVDS

trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 15 --height 12 --transparent true --tint 0x000000 &

gnome-screensaver

gnome-settings-daemon

nm-applet --sm-disable &

gnome-volume-control-applet

sleep 1

dropbox start
