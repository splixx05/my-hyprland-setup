#!/bin/sh

# ---------------------------
# if the computer is connected with an external monitor:
if hyprctl monitors -j | grep -q '"name": "DP-1"'; then
  echo "🖥️"
# if not, so:
else
  echo "💻"
fi
