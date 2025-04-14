export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="minimal"

plugins=(
  git
  colored-man-pages
  command-not-found
  zsh-autosuggestions
  zsh-syntax-highlighting
  sudo
  autojump
)

#IGNORE
export HISTCONTROL=ignoreboth
export HISTSIZE=999999999
export SAVEHIST=$HISTSIZE
#

[[ -f $HOME/.fzf.zsh ]] && source $HOME/.fzf.zsh

#_____________________________________________
setxkbmap -option caps:escape
#_____________________________________________

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
export VISUAL='nvim'
export TERM=xterm-256color
echo '\e[5 q' #turns curson into a line

export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.elasticsearch/bin:$PATH"
export PATH="$HOME/.kibana/bin:$PATH"
export PATH="$HOME/.elasticsearch/bin:$PATH"
export PATH="$HOME/.elasticsearch/bin:$PATH"
export PATH="$HOME/projects/diff-so-fancy:$PATH"
export PATH="$HOME/py_envs/python12/bin:$PATH"
export PATH="$HOME/.local/bin/:$PATH"
export PATH="$PATH:$HOME/.rbenv/shims"
export PATH="$PATH:/usr/lib/dart/bin"
export PATH="$HOME/anaconda3/bin/:$PATH"

export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"

alias vim="nvim"

alias l="/bin/ls -h --time-style='+%Y-%b-%d-%H' -T 0 -G -g --color=always | cut -c 15-"

alias dot='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias :q="exit"
alias :x="exit"
alias task="taskell ~/.config/taskell/taskell.md"
alias vz='vim $(fzf -m)'

vrz(){
    vim $(rg $1 | fzf)
}

# make fuzzy use gitignore
# remove tmp,css,svg,non data files html unity prefabs etc.
# make a fuzzy with rg command
# use rg in vim
# remove every unused bundle in vim
# clenaup vim stetings
# remove any unused vim binding
# make vim fzf ignore all those js files too

get(){
  git grep -i -B"${2:-0}" -A"${3:-0}" "$1" ':!*.css*' ':!*.svg*' ':!*.sql*' ':!*.js' ':!*.ejs' ':!*.html*' ':!*.meta*' ':!*.unity*' ':!*.prefab*' ':!*.asset*'
}

compare_commits() {
  branch_1_commits=$(git log --pretty=format:"%s" $1| sort)
  branch_2_commits=$(git log --pretty=format:"%s" $2| sort)

  diff <(echo "$branch_1_commits") <(echo "$branch_2_commits")
}

# lists last previously visited branches
couts() {
  branches=($(git reflog | awk '/moving from / {print $6}' | cut -d' ' -f1 | head -n 50 | awk '!x[$0]++'))

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

export XSECURELOCK_SAVER="$HOME/.config/i3/lock_screen_screensaver.sh"

export PATH="$PATH:$HOME/miniconda3/bin"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/mehyar/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/mehyar/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/mehyar/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/mehyar/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

