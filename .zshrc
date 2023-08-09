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

#IGNORE
export HISTCONTROL=ignoreboth
#

#_____________________________________________
setxkbmap -option caps:escape
#_____________________________________________

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
export VISUAL='nvim'

export PATH="$HOME/.redis/src:$PATH"
export PATH="$HOME/.elasticsearch/bin:$PATH"
export PATH="$HOME/.kibana/bin:$PATH"
export PATH="$HOME/.elasticsearch/bin:$PATH"
export PATH="$HOME/projects/diff-so-fancy:$PATH"
export PATH="/home/hamza/.local/bin/:$PATH"
export PATH="$PATH:$HOME/.rbenv/shims"
export PATH="$PATH:/usr/lib/dart/bin"

alias n="nvim"
alias vim="nvim"
alias v="nvim"

alias lls="ls"
alias l="/bin/ls -h --time-style='+%Y-%b-%d-%H' -T 0 -G -g --color=always | cut -c 15-"
alias ll="l"

alias it="git"
alias gut="git"
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias :q="exit"
alias :x="exit"
alias weather="curl wttr.in/Amman"
alias task="taskell ~/.config/taskell/taskell.md"


get(){
  git grep -i -B"${2:-0}" -A"${3:-0}" "$1" ':!*.css*' ':!*.svg*' ':!*.sql*' ':!*.js' ':!*.ejs' ':!*.html*' ':!*.meta*' ':!*.unity*' ':!*.prefab*' ':!*.asset*' ':!*.json*'
}

getblame() {
    get $1 | while IFS=: read i j k; do git blame -L $j,$j $i | cat; done
}

compare_commits() {
  branch_1_commits=$(git log --pretty=format:"%s" $1| sort)
  branch_2_commits=$(git log --pretty=format:"%s" $2| sort)

  diff <(echo "$branch_1_commits") <(echo "$branch_2_commits")
}

# lists last previously visited branches
checkouts() {
  branches=($(git reflog | awk '/moving from / {print $6}' | cut -d' ' -f1 | head -n 25 | awk '!x[$0]++'))

  INDEX=1
  for i in $branches; do
    echo "${INDEX}: $i"
    let INDEX=${INDEX}+1
  done

  read number
  echo "${branches[$number]}"
  git checkout "${branches[$number]}"
}

source ~/.zjw
