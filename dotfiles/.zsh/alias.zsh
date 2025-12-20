#        _ _
#   __ _| (_) __ _ ___
#  / _` | | |/ _` / __|
# | (_| | | | (_| \__ \
#  \__,_|_|_|\__,_|___/
#
# ---------------------------------------------------------

# Load files in ~/.zsh/alias/
for file in ~/.zsh/aliases/*.zsh; do
  source "$file"
done

# Show all aliases
alias show-all-alias='cat $ZSH/aliases/*'
