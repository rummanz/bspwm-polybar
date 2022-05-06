#!/bin/bash


if [ -z "$@" ]; then
    echo -en "Shutdown\0icon\x1fsystem-shutdown\n"
    echo -en "Logout\0icon\x1fsystem-log-out\n"
    echo -en "Suspend\0icon\x1fsystem-suspend\n"
    echo -en "Reboot\0icon\x1fsystem-reboot\n"
else
    if [ "$1" = "Shutdown" ]; then
        poweroff
    elif [ "$1" = "Logout" ]; then
        killall polybar && bspc quit
    elif [ "$1" = "Reboot" ]; then
        reboot
    elif [ "$1" = "Suspend" ]; then
        suspend
    fi
fi