export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="minimal"

plugins=(
  git
  zsh-autosuggestions
  zsh-vi-mode
  zsh-syntax-highlighting
  sudo
  web-search
  autojump
)

#tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

#_____________________________________________
setxkbmap -option caps:escape
#_____________________________________________

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
export VISUAL='nvim'
export NVM_DIR=~/.nvm
export PATH="$HOME/.redis/src:$PATH"
export PATH="$HOME/.elasticsearch/bin:$PATH"
export PATH="$HOME/.kibana/bin:$PATH"
export PATH="$HOME/.elasticsearch/bin:$PATH"
export PATH="$HOME/projects/diff-so-fancy:$PATH"
export PATH="/home/hamza/.local/bin/:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$PATH:/usr/lib/dart/bin"

# export ANDROID_HOME=$HOME/Android/Sdk
# export PATH="$ANDROID_HOME/tools:$PATH"
# export PATH="$ANDROID_HOME/platform-tools:$PATH"
# export PATH="$ANDROID_HOME/emulator:$PATH"

# alias nbundler="$HOME/.rbenv/versions/3.0.2/bin/bundler"
# alias ngem="$HOME/.rbenv/versions/3.0.2/bin/gem"
# alias nruby="$HOME/.rbenv/versions/3.0.2/bin/ruby"
# alias jruby="$HOME/.rbenv/versions/jruby-9.2.19.0/bin/ruby"
# alias jbundle="$HOME/.rbenv/versions/jruby-9.2.19.0/bin/bundler"
alias gog='google'
alias n="nvim"
alias vim="nvim"
alias v="nvim"
alias lls="ls"
alias it="git"
alias :q="exit"
alias :x="exit"
alias weather="curl wttr.in/Amman"

alias rspec="bundle exec rspec"

alias aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa="sudo"
alias 5awa="sudo"
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

get(){
  git grep -i -B"${2:-0}" -A"${3:-0}" "$1" ':!*.css*' ':!*.js' ':!*.ejs' ':!*.html*'
}

bandit(){
  ssh bandit${1}@bandit.labs.overthewire.org -p 2220
}

gdiff(){
  git diff ${1} -- . ':(exclude)/home/hamza/workspace/jawaker/web/db/structure.sql' ':(exclude)/home/hamza/workspace/jawaker/web/Gemfile.lock' ':(exclude)/home/hamza/workspace/jawaker/jawaker.sh'
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#
# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/hamza/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/hamza/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/hamza/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/hamza/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

