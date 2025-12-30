#!/bin/sh

BAT=/sys/class/power_supply/BAT1
PERC=$(<"$BAT/capacity")
STAT=$(<"$BAT/status")

# Colors as ANSI
# GREEN='\e[38;2;56;255;156m'
# YELLOW='\e[38;2;255;223;110m'
# ORANGE='\e[38;2;255;170;102m'
# RED='\e[38;2;255;110;138m'
# NC='\e[0m'

if [[ "$STAT" == "Charging" ]]; then
  ICON="⚡"
elif ( (PERC <15)); then
  ICON="🪫"
else
  ICON="🔋"
fi

if [[ "$STAT" == "Charging" ]]; then
  echo -e "${ICON} ${STAT} ${PERC}%"
else
  echo -e "${ICON} ${PERC}%"
fi
