#!/bin/bash

# Update system
yay -Syu

# Install required packages
yay -S --needed $ <"basepkg.txt"

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Finish script
echo "Setup has been completed successfully."
