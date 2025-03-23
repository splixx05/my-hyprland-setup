#  ____                                    _ _       _     
# |  _ \ __ _ _ __   ___ _ __ _____      _(_) |_ ___| |__  
# | |_) / _` | '_ \ / _ \ '__/ __\ \ /\ / / | __/ __| '_ \ 
# |  __/ (_| | |_) |  __/ |  \__ \\ V  V /| | || (__| | | |
# |_|   \__,_| .__/ \___|_|  |___/ \_/\_/ |_|\__\___|_| |_|
#            |_|                                           
#
#----------------------------------------------------------
#-----------  Random Wallpaper script  --------------------
#----------------------------------------------------------

#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers/tokyo-night/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# Apply the selected wallpaper
hyprctl hyprpaper reload ,"$WALLPAPER"

