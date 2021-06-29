# Prompt
eval "$(starship init zsh)"
autoload -U +X compinit && compinit

# Default Editor
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

# Alias
## Unixコマンド
alias ...="cd ../.."
alias ls="exa -lha --git"
alias find="fd"
alias grep="rg"
alias hexdump="hexyl"

## ghq
# ref:https://qiita.com/itkrt2y/items/0671d1f48e66f21241e2
alias g='cd $(ghq root)/$(ghq list | peco)'
alias ghb='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
# ref:https://qiita.com/UNILORN/items/fafa9f00fde8a28caa4f
alias glb='cd $(ghq root)/$(ghq list | peco) && gitbr'
alias gitbr="git remote get-url origin | sed -e 's/ssh:\/\/git@/https:\/\//g' -e 's/:[0-9]\{2,\}//g' -e 's/.git$//g' | xargs -I \{\} open {}"

## それ以外
alias gc="git commit"
alias cpr='(){ git fetch $1 pull/$2/head:pr-$2; git checkout pr-$2; }'
alias k="kubectl"
source <(kubectl completion zsh)

# Python
export LDFLAGS="-L$(xcrun --show-sdk-path)/usr/lib"
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Node.js
export NVM_DIR=$HOME/.nvm
source $(brew --prefix nvm)/nvm.sh

# Go ^1.13
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Rust 🦀
export PATH=$HOME/.cargo/bin:$PATH

# Flutter
export PATH=$HOME/dev/flutter/bin:$PATH

# Android Studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# OpenJDK
export PATH=/usr/local/opt/openjdk/bin:$PATH
export CPPFLAGS="-I/usr/local/opt/openjdk/include"

# GNU sed
export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:$PATH

# Google Cloud
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'