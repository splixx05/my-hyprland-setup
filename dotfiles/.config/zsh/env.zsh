#          _                       _                                      _
#  _______| |__     ___ _ ____   _(_)_ __ ___  _ __  _ __ ___   ___ _ __ | |_
# |_  / __| '_ \   / _ \ '_ \ \ / / | '__/ _ \| '_ \| '_ ` _ \ / _ \ '_ \| __|
#  / /\__ \ | | | |  __/ | | \ V /| | | | (_) | | | | | | | | |  __/ | | | |_
# /___|___/_| |_|  \___|_| |_|\_/ |_|_|  \___/|_| |_|_| |_| |_|\___|_| |_|\__|
#
# ----------------------------------------------------------------------------

# zoxide config
export _ZO_ECHO='1'
eval "$(zoxide init zsh)"

# Set Cargo to PATH
export PATH="$HOME/.cargo/bin:$PATH"

# Set Nvim to standard & sudo editor
export EDITOR=nvim

export SUDO_EDITOR=nvim
export SYSTEMD_EDITOR=nvim

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Standard DIR for eza (LS_COLORS)
export EZA_CONFIG_DIR="$HOME/.config/eza"

# XDG User dirs
[ -f "${HOME}/.config/user-dirs.dirs" ] && source "${HOME}/.config/user-dirs.dirs"
