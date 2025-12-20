#!/bin/sh

cat <<"EOF"
 ______     ______     __  __        __  __     ______   _____     ______     ______   ______   
/\___  \   /\  ___\   /\ \_\ \      /\ \/\ \   /\  == \ /\  __-.  /\  __ \   /\__  _\ /\  ___\  
\/_/  /__  \ \___  \  \ \  __ \     \ \ \_\ \  \ \  _-/ \ \ \/\ \ \ \  __ \  \/_/\ \/ \ \  __\  
  /\_____\  \/\_____\  \ \_\ \_\     \ \_____\  \ \_\    \ \____-  \ \_\ \_\    \ \_\  \ \_____\
  \/_____/   \/_____/   \/_/\/_/      \/_____/   \/_/     \/____/   \/_/\/_/     \/_/   \/_____/

EOF

# -------------- Update all local (git) pakages ------------------
sleep 1
echo "          --- The ultimate git Zsh update! ---"
echo "		--- developed by r!cky ---"
sleep 1
echo " "
echo " "
echo "🔄 Updating local Zsh plugins..."
echo " "
sleep 1

# Detect correct plugin directory
if [[ -d "$ZSH/plugins/local" ]]; then
	plugin_root="$ZSH/plugins/local"
elif [[ -d "$ZSH/custom/plugins" ]]; then
	plugin_root="$ZSH/custom/plugins"
else
	echo "⚠️  No local or custom plugin directory found."
	exit 0
fi

# Loop through plugins
for dir in "$plugin_root"/*/.git; do
	plugin_dir=$(dirname "$dir")
	echo "→ $(basename "$plugin_dir")"
	git -C "$plugin_dir" pull --ff-only
done
sleep 1
echo " "
echo "✅ All git packages on zsh updated!"
echo " "

#TODO: Upgrade the "GIT"-part not only to git plugin in ZSH,
#      but all git pkg in the system
