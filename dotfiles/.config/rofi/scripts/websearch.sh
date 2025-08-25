#!/usr/bin/sh

# Engine
options="Google\nDuckDuckGo\nArch Wiki"
engine=$(echo -e "$options" | rofi -dmenu -theme ~/.config/rofi/themes/spotlight.rasi -p "Search with")

# Requesting query
query=$(rofi -dmenu -theme ~/.config/rofi/themes/spotlight.rasi -p "Enter query")

# Handle empty requests
[ -z "$engine" ] && exit
[ -z "$query" ] && exit

# Handle query for URL (empty char -> +)
query=$(echo "$query" | sed 's/ /+/g')

# Browser request on the selected engine
case "$engine" in
Google) xdg-open "https://www.google.com/search?q=$query" ;;
DuckDuckGo) xdg-open "https://duckduckgo.com/?q=$query" ;;
Arch\ Wiki) xdg-open "https://wiki.archlinux.org/index.php?search=$query" ;;
esac
