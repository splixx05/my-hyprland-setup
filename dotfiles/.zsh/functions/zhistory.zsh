# Use emacs key bindings
bindkey -e

# Start typing + [Up-Arrow] - fuzzy find history forward
autoload -U up-line-or-beginning-search
zle -N up-line-or-beginning-search

bindkey -M emacs "^[^K" up-line-or-history
bindkey -M viins "^[^K" up-line-or-history
bindkey -M vicmd "^[^K" up-line-or-history

bindkey -M emacs "^[^J" down-line-or-history
bindkey -M viins "^[^J" down-line-or-history
bindkey -M vicmd "^[^J" down-line-or-history

# [Backspace] - delete backward
bindkey -M emacs '^?' backward-delete-char
bindkey -M viins '^?' backward-delete-char
bindkey -M vicmd '^?' backward-delete-char

## History file configuration
[ -z "$HISTFILE" ] && HISTFILE="${XDG_CONFIG_HOME:-$HOME}/.zsh/.zhistory"
[ "$HISTSIZE" -lt 1000 ] && HISTSIZE=1000
[ "$SAVEHIST" -lt 999 ] && SAVEHIST=999

## History command configuration
setopt share_history		# share command history data
setopt hist_find_no_dups	# do not display previously found command
setopt hist_ignore_all_dups	# remove old command if new one is a duplicate
setopt hist_expire_dups_first	# delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups		# do not save duplicate of prior command
setopt hist_ignore_space	# do not save if line starts with space
setopt hist_verify              # show command with history expansion to user before running it
