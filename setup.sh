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
