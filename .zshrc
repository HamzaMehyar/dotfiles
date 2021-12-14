export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="minimal"

plugins=(git
  zsh-autosuggestions
  zsh-syntax-highlighting
  sudo
  web-search
  autojump
)

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
export VISUAL='nvim'
export NVM_DIR=~/.nvm
export PATH="$HOME/.redis/src:$PATH"
export PATH="$HOME/.elasticsearch/bin:$PATH"
export PATH="$HOME/.kibana/bin:$PATH"
export PATH="$HOME/.rbenv/versions/2.4.10/bin/:$PATH"
export PATH="$HOME/.elasticsearch/bin:$PATH"
export PATH="$HOME/projects/diff-so-fancy:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"

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
alias aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa="sudo"
alias 5awa="sudo"

#GIT
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

get(){
  git grep -i -B"${2:-0}" -A"${3:-0}" "$1" ':!*.css*' ':!*.js' ':!*.ejs' ':!*.html*'
}
