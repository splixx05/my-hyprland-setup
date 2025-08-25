#!/bin/sh

query="$1"

if [ -z "$query" ]; then
  echo -e "📂 Files\n🌍 Web Search\n⚡ Commands"
  exit 0
fi

case "$query" in
Files)
  fd . ~/Documents | rofi -dmenu -i -p "File:" | xargs -r xdg-open
  ;;
Web\ Search)
  q=$(rofi -dmenu -p "Search the web:")
  [ -n "$q" ] && xdg-open "https://duckduckgo.com/?q=$q"
  ;;
Commands)
  rofi -show run
  ;;
esac
