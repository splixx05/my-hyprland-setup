#!/bin/sh

    cat << "EOF"
 ______     ______     __  __        __  __     ______   _____     ______     ______   ______   
/\___  \   /\  ___\   /\ \_\ \      /\ \/\ \   /\  == \ /\  __-.  /\  __ \   /\__  _\ /\  ___\  
\/_/  /__  \ \___  \  \ \  __ \     \ \ \_\ \  \ \  _-/ \ \ \/\ \ \ \  __ \  \/_/\ \/ \ \  __\  
  /\_____\  \/\_____\  \ \_\ \_\     \ \_____\  \ \_\    \ \____-  \ \_\ \_\    \ \_\  \ \_____\
  \/_____/   \/_____/   \/_/\/_/      \/_____/   \/_/     \/____/   \/_/\/_/     \/_/   \/_____/

EOF

sleep 1
echo "          --- The ultimate Zsh-pkg update! ---"
echo "		--- developed by r!cky ---"
sleep 1
echo " "
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
