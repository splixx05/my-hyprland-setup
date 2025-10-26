zsh-update()
{
    cat << "EOF"

#  ███████████         █████         ███████████            ████  ████ 
# ░█░░░░░░███         ░░███         ░░███░░░░░░█           ░░███ ░░███ 
# ░     ███░    █████  ░███████      ░███   █ ░  █████ ████ ░███  ░███ 
#      ███     ███░░   ░███░░███     ░███████   ░░███ ░███  ░███  ░███ 
#     ███     ░░█████  ░███ ░███     ░███░░░█    ░███ ░███  ░███  ░███ 
#   ████     █ ░░░░███ ░███ ░███     ░███  ░     ░███ ░███  ░███  ░███ 
#  ███████████ ██████  ████ █████    █████       ░░████████ █████ █████
# ░░░░░░░░░░░ ░░░░░░  ░░░░ ░░░░░    ░░░░░         ░░░░░░░░ ░░░░░ ░░░░░ 
#                                                                      
#                                                                      
#                                                                      
#  █████  █████               █████            █████                   
# ░░███  ░░███               ░░███            ░░███                    
#  ░███   ░███  ████████   ███████   ██████   ███████    ██████        
#  ░███   ░███ ░░███░░███ ███░░███  ░░░░░███ ░░░███░    ███░░███       
#  ░███   ░███  ░███ ░███░███ ░███   ███████   ░███    ░███████        
#  ░███   ░███  ░███ ░███░███ ░███  ███░░███   ░███ ███░███░░░         
#  ░░████████   ░███████ ░░████████░░████████  ░░█████ ░░██████        
#   ░░░░░░░░    ░███░░░   ░░░░░░░░  ░░░░░░░░    ░░░░░   ░░░░░░         
#               ░███                                                   
#               █████                                                  
#              ░░░░░            --- Custom update automatisation ---                 
#				      --- developed by r!cky ---                               
EOF

# -------------- Update all local (git) pakages ------------------
sleep 2
	echo " "
	echo "🔄 Updating local Zsh plugins..."
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
	echo "✅ All git packages on zsh updated!"

# ---------- Update all global (pkg-mgr) pakages ------------------
sleep 2
	echo "⚙️ Updating global packages..."
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
	echo "✅ All packages updated!"
	fi
}

# TODO: # 
# - Respect the storage, where git (local) plugins are stored
