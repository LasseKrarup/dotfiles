#!/bin/bash

ICON="/usr/share/icons/Material-Design-Icons/coffee-outline.svg"

/usr/bin/sudo -u lasse DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus /usr/bin/notify-send -i "$ICON" -t 5000 "Take a break!" "You've been working for 45minutes, take a short break."
