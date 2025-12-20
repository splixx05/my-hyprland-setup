#!/bin/sh

cat <<"EOF"
 ______     ______     __  __        __  __     ______   _____     ______     ______   ______   
/\___  \   /\  ___\   /\ \_\ \      /\ \/\ \   /\  == \ /\  __-.  /\  __ \   /\__  _\ /\  ___\  
\/_/  /__  \ \___  \  \ \  __ \     \ \ \_\ \  \ \  _-/ \ \ \/\ \ \ \  __ \  \/_/\ \/ \ \  __\  
  /\_____\  \/\_____\  \ \_\ \_\     \ \_____\  \ \_\    \ \____-  \ \_\ \_\    \ \_\  \ \_____\
  \/_____/   \/_____/   \/_/\/_/      \/_____/   \/_/     \/____/   \/_/\/_/     \/_/   \/_____/

EOF

# -------------- Update all Yazi pakages ------------------
sleep 1
echo "          --- The ultimate Yazi update! ---"
echo "		--- developed by r!cky ---"
sleep 1
echo " "
echo " "
echo "🦆 Updating Yazi plugins..."
echo " "
sleep 1

PLUGIN_DIR="$HOME/.config/yazi/plugins"

# Detect correct plugin directory
if [[ -d "$PLUGIN_DIR" ]]; then
	ya pkg upgrade
else
	echo "⚠️  No local or custom plugin directory found."
	exit 0
fi

sleep 1
echo " "
echo "✅ All Yazi packages updated!"
echo " "
