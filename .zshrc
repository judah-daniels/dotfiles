# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# iterm2 Shell Integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export NVIM_HOME="${HOME}/.config/nvim"

plugins=(git thefuck tmux zsh-syntax-highlighting vi-mode zsh-autosuggestions z)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Aliases
alias vim="nvim"
alias n="nvim"

alias ls="ls --color=auto"

# Haskell aliases
alias st="stack test"
alias sb="stack build"

# Open zathura
function za() { command zathura $* & disown }

# Nice Git log
alias glog="git log --all --graph --decorate --oneline"

# Set-up haskel ghcup environment
[ -f "${HOME}/.ghcup/env" ] && source "${HOME}/.ghcup/env" # ghcup-env

# Type "fuck" in the terminal to correct your previous command
eval $(thefuck --alias)

# VIM bindings
bindkey -v

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && \. "/usr/local/opt/nvm/etc/bash_completion"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Pyenv setup to manage python environment
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

# Rbenv setup to manage ruby environment
eval "$(rbenv init - zsh)"

# Set up GPG to sign commits
gpg-connect-agent /bye

export GPG_TTY=$(tty)
