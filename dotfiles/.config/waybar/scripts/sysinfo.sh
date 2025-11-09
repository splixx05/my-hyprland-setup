#!/usr/bin/env bash

# RAM in percent
ram_used=$(free -h | awk '/Mem:/ {print $3 "/" $2}')

# # SSD (Root-Partition) in percent
# ssd_used=$(df -h / | awk 'NR==2 {print $3 "/" $2}')

# # Temperature
temp=$(sensors | grep -E 'Package id 0:' | awk '{print $4}' | tr -d '+')

# --- Temperature ---
# If "sensors" is installed
temp_raw=$(sensors | grep -E 'Package id 0:' | awk '{print $4}' | tr -d '+°C')

# Fallback, if sensors doesn't print:
if [[ -z "$temp_raw" ]]; then
  temp_raw=$(cat /sys/class/thermal/thermal_zone0/temp 2>/dev/null | awk '{print int($1/1000)}')
fi

# ensure to have an integer
temp=${temp_raw:-0}

# --- Dynamic print ---
if ((temp < 45)); then
  temp_icon="❄️"
  temp_color="#7dcfff"
elif ((temp < 70)); then
  temp_icon="🌡️"
  temp_color="#e0af68"
else
  temp_icon="🔥"
  temp_color="#f7768e"
fi

# echo "📊 $ram_used | 💾 $ssd_used | 🌡️ $temp"
echo "📊 $ram_used | $temp"
