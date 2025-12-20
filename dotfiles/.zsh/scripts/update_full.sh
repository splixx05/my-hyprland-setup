#!/bin/sh

    cat << "EOF"
 ______     ______     __  __        __  __     ______   _____     ______     ______   ______   
/\___  \   /\  ___\   /\ \_\ \      /\ \/\ \   /\  == \ /\  __-.  /\  __ \   /\__  _\ /\  ___\  
\/_/  /__  \ \___  \  \ \  __ \     \ \ \_\ \  \ \  _-/ \ \ \/\ \ \ \  __ \  \/_/\ \/ \ \  __\  
  /\_____\  \/\_____\  \ \_\ \_\     \ \_____\  \ \_\    \ \____-  \ \_\ \_\    \ \_\  \ \_____\
  \/_____/   \/_____/   \/_/\/_/      \/_____/   \/_/     \/____/   \/_/\/_/     \/_/   \/_____/

EOF

# -------------- Update all local (git) pakages ------------------
sleep 1
echo "          --- The ultimate full Zsh update! ---"
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
echo "-------------------------------------------------------------------"
# -------------- Update all Yazi pakages ------------------
echo " "
echo "🦆 Updating Yazi plugins..."
echo " "
sleep 2

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
echo "-------------------------------------------------------------------"
# ---------- Update all global (pkg-mgr) pakages ------------------
sleep 2
echo " "
	echo "⚙️ Updating global packages..."
	echo " "
	echo "Looking for package manager..."
sleep 1
	if command -v yay &>/dev/null; then
		echo "yay has been detected!"
sleep 1
		echo "📦 Updating system packages via yay..." && yay -Syu --noconfirm
	elif command -v apt &>/dev/null; then
		echo "apt has been detected!"
sleep 1
		echo "📦 Updating system packages via apt..." && sudo apt update && sudo apt upgrade
	elif command -v brew &>/dev/null; then
		echo "Homebrew has been detected"
sleep 1
		echo "🍺 Updating Homebrew packages..." && brew update && brew upgrade
	else
		echo "⚠️  No supported package manager found." && exit 0
sleep 1
	echo " "
	echo "✅ All packages updated!"
	fi
