#!/bin/bash

brew cask install code

brew cask install virtualbox
brew cask install vagrant

# https://stackoverflow.com/questions/39972335/how-do-i-press-and-hold-a-key-and-have-it-repeat-in-vscode
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

brew install kubectl
brew install k9s

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

## Copy .zshrc

# Install Oh My Zash theme: powerlevel10k https://github.com/romkatv/powerlevel10k#get-started
## Install font: https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k
## Install Oh My Zsh: https://github.com/romkatv/powerlevel10k#oh-my-zsh

# Add Oh My Zsh plugins: vagrant

git config --global init.defaultBranch main
