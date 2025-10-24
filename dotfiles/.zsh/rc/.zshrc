#          _              
#  _______| |__  _ __ ___ 
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__ 
# /___|___/_| |_|_|  \___|
#
# ------------------------------------------------------------------------------------

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ----------- Path to zsh config dir ------------------- #
export ZCONFIG="${XDG_CONFIG_HOME:-$HOME}/.zsh"
# ------------------------------------------------------ #


# Load zfiles (without src.zsh)
for file in $ZCONFIG/*.zsh; do
  [[ "$file" == "$ZCONFIG/src.zsh" ]] && continue
  [[ -f "$file" ]] && source "$file"
done

# Load zfunctions
for file in $ZCONFIG/functions/*.zsh; do
  [[ -f "$file" ]] && source "$file"
done

# Load zplugins
source "$ZCONFIG/src.zsh"

# -------------------- EOF ----------------------------- #
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.zsh/rc/.p10k.zsh ]] || source ~/.zsh/rc/.p10k.zsh
# ------------------------------------------------------ #
