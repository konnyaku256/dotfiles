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

# Configure the ANDROID_HOME environment variable
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools