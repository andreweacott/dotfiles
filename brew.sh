#!/usr/bin/env bash

# Install command-line tools using Homebrew

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Update and upgrade already-installed formulae
brew update
brew upgrade

brew tap homebrew/cask-fonts

# Install binaries
brew install asciinema
brew install awscli
brew install bash-completion
brew install ack
brew install bat
brew install bzip2
brew install buf
brew install coreutils
brew install ctop
brew install direnv
brew install diff-so-fancy
brew install docker-compose
brew install dos2unix
brew install evans
brew install exa
brew install flake8
brew install fontconfig
brew install gh
brew install git
brew install git-lfs
brew install nvm
brew install go
brew install gource
brew install gradle
brew install grpcurl
brew install helm
brew install istioctl
brew install jq
brew install k9s
brew install kubectx
brew install kubernetes-cli
brew install lazydocker
brew install lazygit
brew install --cask font-hack-nerd-font
brew install openssh
brew install openssl
brew install pre-commit
brew install protobuf
brew install prototool
brew install pstree
brew install pwgen
brew install pyenv
brew install pyenv-virtualenv
brew install python@3.9
brew install rename
brew install stern
brew install stow
brew install tldr
brew install tmux
brew install tree
brew install webp
brew install wget
brew install yarn
brew install zsh
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

# Install casks
brew cask install bartender
brew cask install hyper
brew cask install visual-studio-code

# Install fzf
brew install fzf
$(brew --prefix)/opt/fzf/install

# Install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

pip install --user powerline-status

chsh -s $(which zsh)

# Remove outdated versions from the cellar
brew cleanup
