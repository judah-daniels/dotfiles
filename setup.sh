#!/bin/bash

# Install NVIM
rm -rf ~/.config/nvim
ln -s $(pwd)/nvim ~/.config/nvim

mv ~/.tmux.conf ~/.tmux.conf.pre-judah-config
ln -s $(pwd)/.tmux.conf ~/.tmux.conf

mv ~/.zshrc ~/.zshrc.pre-judah-config
ln -s $(pwd)/.zshrc ~/.zshrc

rm ~/.config/starship.toml
ln -s $(pwd)/starship.toml ~/.config/starship.toml

mkdir  ~/Library/Application\ Support/iTerm2/Scripts/AutoLaunch/ 
ln -s $(pwd)/iterm2/switch_automatic.py ~/Library/Application\ Support/iTerm2/Scripts/AutoLaunch/switch_automatic.py
