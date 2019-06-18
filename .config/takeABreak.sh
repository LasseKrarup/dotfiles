#!/bin/bash

ICON="/usr/share/icons/Material-Design-Icons/coffee-white.svg"

/usr/bin/sudo -u lasse DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus /usr/bin/notify-send -i "$ICON" -t 5000 "Ready to work?" "Get your ass to it. You'll get a break in 45 minutes."

while true
    do
        sleep 45m
	/usr/bin/paplay /usr/share/sounds/freedesktop/stereo/bell.oga
        /usr/bin/sudo -u lasse DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus /usr/bin/notify-send -i "$ICON" -t 5000 "Take a break!" "You've been working for 45minutes, take a short break."
done
