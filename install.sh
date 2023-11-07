#!/bin/bash

# Install homebrrew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install all brew programs
brew bundle install
