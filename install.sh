#!/usr/bin/env bash

# Install Homebrew formulae
source brew.sh

# Install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set up symlinks using stow
source symlinks.sh

# Update settings
source ~/.zshrc
