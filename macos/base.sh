#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew cask install firefox

# https://rectangleapp.com/ - Move and resize windows in macOS using keyboard shortcuts or snap areas
brew cask install rectangle

# https://karabiner-elements.pqrs.org/index.html - Switch Fn with Ctrl keys
brew cask install karabiner-elements
