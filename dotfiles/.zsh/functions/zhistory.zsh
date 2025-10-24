bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

HISTFILE="${XDG_CONFIG_HOME:-$HOME}/.zsh/zhistory"
SAVEHIST=1000
HISTSIZE=999

setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
