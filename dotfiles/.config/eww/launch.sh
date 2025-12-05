#!/bin/bash

## Files and cmd
FILE="$HOME/.cache/eww-launch"
CFG="$HOME/.config/eww/"
EWW=$(which eww)

# Run eww daemon
${EWW} daemon
sleep 1

touch "$FILE"

${EWW} --config "$CFG" open-many \
  sleep \
  logout \
  reboot \
  poweroff \
  clock \
  system \
  folders
