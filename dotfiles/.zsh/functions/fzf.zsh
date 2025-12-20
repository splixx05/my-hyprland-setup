# STRG+R = fuzzy history
bindkey '^F' fzf-history-widget

fzf-history-widget() {
  BUFFER=$(fc -l 1 | fzf +s --tac | sed 's/ *[0-9]\+ *//')
  CURSOR=$#BUFFER
  zle redisplay
}
zle -N fzf-history-widget

