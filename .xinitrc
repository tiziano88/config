#!/bin/bash

trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 15 --height 12 --transparent true --tint 0x000000 &

gnome-screensaver

gnome-settings-daemon

nm-applet --sm-disable &

gnome-volume-control-applet

sleep 1

dropbox start
