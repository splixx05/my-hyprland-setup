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
export ZSH="$HOME/.zsh"
# ------------------------------------------------------ #


# Load zfiles (without src.zsh)
for file in $ZSH/*.zsh; do
  [[ "$file" == "$ZSH/src.zsh" ]] && continue
  [[ -f "$file" ]] && source "$file"
done

# Load zfunctions
for file in $ZSH/functions/*.zsh; do
  [[ -f "$file" ]] && source "$file"
done

# Load zplugins
source "$ZSH/src.zsh"

# -------------------- EOF ----------------------------- #
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f "$ZSH/rc/.p10k.zsh" ]] || source "$ZSH/rc/.p10k.zsh"
# ------------------------------------------------------ #
