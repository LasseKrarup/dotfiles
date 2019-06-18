#!/bin/bash

POWERSUPPLY="/sys/class/power_supply/ADP1/online"
TOO_LOW=20 # how low is too low?
NOT_CHARGING="0"
ICON="/usr/share/icons/Papirus/22x22/panel/battery-low.svg"

BATTERY_LEVEL=$(acpi -b | grep -P -o '[0-9]+(?=%)')
STATUS=$(cat $POWERSUPPLY)

if [ $BATTERY_LEVEL -le $TOO_LOW -a $STATUS = $NOT_CHARGING ]
then
    /usr/bin/sudo -u lasse DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus /usr/bin/notify-send -u critical -i "$ICON" -t 5000 "Battery low" "Battery level is ${BATTERY_LEVEL}%!"
fi

exit 0
