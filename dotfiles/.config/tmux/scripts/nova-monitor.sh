#!/bin/sh

if hyprctl monitors -j | grep -q '"description": ".*HDMI\|DP"'; then
  echo "🖥️"
else
  echo "💻"
fi
