#!/bin/sh
brew install bash-completion coreutils dos2unix fontconfig handbrake maven mysql openssl python terraform thefuck tree wget zsh zsh-completions zsh-syntax-highlighting

#brew cask install iterm2

brew tap caskroom/fonts
brew cask install font-hack-nerd-font

pip install --user powerline-status

chsh -s $(which zsh)
rm -f ~/.zcompdump; compinit
