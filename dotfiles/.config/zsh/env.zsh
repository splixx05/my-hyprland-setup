#          _                       _                                      _   
#  _______| |__     ___ _ ____   _(_)_ __ ___  _ __  _ __ ___   ___ _ __ | |_ 
# |_  / __| '_ \   / _ \ '_ \ \ / / | '__/ _ \| '_ \| '_ ` _ \ / _ \ '_ \| __|
#  / /\__ \ | | | |  __/ | | \ V /| | | | (_) | | | | | | | | |  __/ | | | |_ 
# /___|___/_| |_|  \___|_| |_|\_/ |_|_|  \___/|_| |_|_| |_| |_|\___|_| |_|\__|
# 



# source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# zoxide config
export _ZO_ECHO='1'
eval "$(zoxide init zsh)"

# Set Cargo to PATH
export PATH="$HOME/.cargo/bin:$PATH"

# Set Nvim to standard editor
export EDITOR=nvim

# pnpm
export PNPM_HOME="/home/ricky/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Standard DIR for Hyprshot to safe screenshots
export HYPRSHOT_DIR="$HOME/Pictures/Screenshots"

