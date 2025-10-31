#!/bin/sh

FUNCTION_SRC="$PWD/functions"

# Load functions
for file in $FUNCTION_SRC/*.zsh; do
  [[ -f "$file" ]] && source "$file"
done
