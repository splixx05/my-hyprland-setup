#!/bin/sh

# --------------------------------------------------------
# Statusbar wlan output for nova

iface="wlan0"

read RX1 TX1 <<< $(awk -v iface="$iface" '$1 ~ iface ":" {print $2, $10}' /proc/net/dev)
sleep 1
read RX2 TX2 <<< $(awk -v iface="$iface" '$1 ~ iface ":" {print $2, $10}' /proc/net/dev)

RX=$((RX2 - RX1))
TX=$((TX2 - TX1))

echo "📡 $iface 🔻 ${RX} B/s 🔺 ${TX} B/s"

## ----- Units ----------------

# Bytes/s
# RX=$((RX2 - RX1))
# TX=$((TX2 - TX1))

# KB
# RX=$(((RX2 - RX1) / 1024))
# TX=$(((TX2 - TX1) / 1024))

# MB
# RX=$(((RX2 - RX1) / 1024 / 1024))
# TX=$(((TX2 - TX1) / 1024 / 1024))

# Mbits
# RX=$(((RX2 - RX1) * 8 / 1000000))
# TX=$(((TX2 - TX1) * 8 / 1000000))

# Bits
# RX=$(((RX2 - RX1) * 8))
# TX=$(((TX2 - TX1) * 8))
