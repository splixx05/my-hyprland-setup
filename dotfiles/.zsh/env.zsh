#                                    _       _     _
#   ___ _ ____   __ __   ____ _ _ __(_) __ _| |__ | | ___  ___
#  / _ \ '_ \ \ / / \ \ / / _` | '__| |/ _` | '_ \| |/ _ \/ __|
# |  __/ | | \ V /   \ V / (_| | |  | | (_| | |_) | |  __/\__ \
#  \___|_| |_|\_/     \_/ \__,_|_|  |_|\__,_|_.__/|_|\___||___/
#
# ----------------------------------------------------------------------------

# # Log yazi --> uncomment, if needed or use as 1-time-cmd
# export YAZI_LOG=debug

if [[ "$TERM" == "xterm-kitty" ]]; then
  export TERM=kitty
fi

# Set nvm to shell
source /usr/share/nvm/init-nvm.sh

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

# Set opencode to path
export PATH=/home/ricky/.opencode/bin:$PATH

