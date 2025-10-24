# --------------- Essential plugins ----------------------------
# --- Theme first ---
if [[ -f ~/.zsh/plugins/essentials/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme ]]; then
  source ~/.zsh/plugins/essentials/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
fi

# ---------- Syntax Highlighting always @ EOF ------------------
if [[ -f ~/.zsh/plugins/essentials/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  source ~/.zsh/plugins/essentials/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# --------------------------------------------------------------

# ----------- Local plugins  -----------------------
# for plugin in ~/.zsh/plugins/local/*/*.zsh; do
#   source "$plugin"
# done

# ----------- Global plugins -----------------------
for plugin in ~/.zsh/plugins/global/*/*.zsh; do
  source "$plugin"
done
