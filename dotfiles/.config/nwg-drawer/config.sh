#!/bin/sh
nwg-drawer -g Kde-Blue -i IOTA-Dark-Icons -mb 20 -mr 1000 -mt 120 -ml 20 -pbexit "hyprctl dispatch exit" -pblock "loginctl lock-session" -pbpoweroff "systemctl poweroff" -pbreboot "systemctl reboot" -pbsleep "systemctl suspend" -term kitty
