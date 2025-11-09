#!/usr/bin/sh

ram_used=$(free -h | awk '/Mem:/ {print $3 "/" $2}')
ssd_used=$(df -h / | awk 'NR==2 {print $3 "/" $2}')
temp=$(sensors | grep -E 'Package id 0:' | awk '{print $4}' | tr -d '+')

cat <<EOF
{
  "text": "RAM $ram_used | SSD $ssd_used | $temp",
  "tooltip": "RAM usage: $ram_used\nDisk usage: $ssd_used\nCPU Temp: $temp",
  "class": "sysinfo"
}
EOF
