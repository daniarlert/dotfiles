# p10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin/
export PATH=$PATH:$HOME/.exercism
export PATH=$PATH:$HOME/.local/bin

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME='powerlevel10k/powerlevel10k'

zstyle ':omz:update' frequency 7
COMPLETION_WAITING_DOTS="true"

plugins=(git node nvm)

source $ZSH/oh-my-zsh.sh

# Aliases
alias :q='exit'
alias vim='nvim'
alias cls='clear'
alias weather='curl wttr.in'

alias shutdown='sudo shutdown -h now'

alias zshconf='vim ~/.zshrc'
alias gconf='vim ~/.gitconfig'
alias vconf='vim ~/.config/nvim/init.vim'
alias vv='vconf'
alias kittyconf='vim ~/.config/kitty/kitty.conf'

alias upall='sudo apt update && sudo apt upgrade'
alias upally='sudo apt update && sudo apt upgrade -y'

alias .='cd ..'
alias ..='cd ../../'
alias ...='cd ../../../'

alias dl='cd ~/Descargas'
alias docs='cd ~/Documentos'

alias g='git'
alias v='vim'
alias h='history'

alias cp='cp -i'
alias mv='mv -i'
alias untar='tar xvf'

alias icat="kitty +kitten icat"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
