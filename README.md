# Judahs's dotfiles

## Contents

- Vim (NeoVim) config
- Tmux config
- Git config
- Zsh config

## Neovim setup

Requires [Neovim](https://neovim.io/) (>= 0.8)

- Packer: plugin management
- LSP: Language Server Protocol 
- Mason: language server management for linting, formatting etc.
- Telescope: File browsing, fuzzy search through repository etc.
- Git-signs and Fugitive for Git integration.
- Undo-Tree: View undo tree.
- Various other useful plugins.

## Shell setup (macOS & Linux)

- [oh-my-zsh](https://ohmyz.sh/) - Shell with nice features.
- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts) - Powerline-patched fonts. I use FuraMono.
- [z](https://github.com/jethrokuan/z) - Directory jumping
- [fzf](https://github.com/PatrickF1/fzf.fish) - Interactive filtering
- [starship](https://starship.rs/) - Beautiful Shell

## Tmux config
- Tokyo-night theme
- Vim bindings
- Prefix is `Ctrl-a`
- Mouse mode on
- `Ctrl-a + |` : split horizontal
- `Ctrl-a + -` : split vertically

## Git config
- `gloglive`, `gfetchlive`, `gstatuslive` - small shell scripts to view live git info.
- Shortcuts such as `gcl` for `git clone`.

## How to use

- Run `install.sh` from this git directory to install brew, and install a bunchhh of programs. See the Brewfile to see what will be installed. 
- Run `setup.sh` from this git directory to set everything up. Please check this script first and note that it will overwrite existing configuration!. **Be Careful**.

