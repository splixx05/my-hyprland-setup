#!/usr/bin/env bash

ram_used=$(free -h | awk '/Mem:/ {print $3 "/" $2}')
# ssd_used=$(df -h / | awk 'NR==2 {print $3 "/" $2}')
temp_raw=$(sensors | grep -E 'Package id 0:' | awk '{print $4}' | tr -d '+°C')
[[ -z "$temp_raw" ]] && temp_raw=$(cat /sys/class/thermal/thermal_zone0/temp 2>/dev/null | awk '{print int($1/1000)}')
temp=${temp_raw:-0}

# # Clean numeric value
# temp=$(echo "$temp_raw" | grep -oE '[0-9]+')
# temp=${temp:-0}
#
# # Dynamic icons
# if ((temp <= 45)); then
#   temp_icon="❄️"
# elif ((temp <= 70)); then
#   temp_icon="🌡️"
# elif ((temp >= 70)); then
#   temp_icon="🔥"
# else
#   temp_icon="⁉️"
# fi

echo "📊 $ram_used 🌡️ ${temp}°C"
# echo "🧠 $ram_used | 💽 $ssd_used | 🌡️ ${temp}°C"
# echo "📊 $ram_used | $temp_icon ${temp}°C"
