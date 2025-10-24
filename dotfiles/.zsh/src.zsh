#          _             _             _
#  _______| |__    _ __ | |_   _  __ _(_)_ __  ___
# |_  / __| '_ \  | '_ \| | | | |/ _` | | '_ \/ __|
#  / /\__ \ | | | | |_) | | |_| | (_| | | | | \__ \
# /___|___/_| |_| | .__/|_|\__,_|\__, |_|_| |_|___/
#                 |_|            |___/
# ---------------------------------------------------------------------------------------

# --- Theme first ---
if [[ -f ~/.zsh/plugins/global/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme ]]; then
  source ~/.zsh/plugins/global/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
fi

# --- Local plugins ---
setopt null_glob
for local in ~/.zsh/plugins/local/*/*.zsh; do
  [[ -f "$local" ]] && source "$local"
done
unsetopt null_glob

# --- Global plugins ---
setopt null_glob
for global in ~/.zsh/plugins/global/*/*.zsh; do
  [[ -f "$global" ]] && source "$global"
done
unsetopt null_glob

# ---------- Syntax Highlighting always @ EOF ------------------
if [[ -f ~/.zsh/plugins/global/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  source ~/.zsh/plugins/global/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
