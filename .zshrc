# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias ...="cd ../.."
alias gc="git commit"
alias k="kubectl"
source <(kubectl completion zsh)

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'
export PATH=$HOME/.nodebrew/current/bin:$PATH