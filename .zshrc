export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=~/.local/bin/:$PATH
 export MANPATH="/usr/local/man:$MANPATH"
export NODE_OPTIONS=--max_old_space_size=4096

# get a password from vault and copy it to the clipboard
password() {
	vault $1 | pbcopy
	echo "password copied"
}

clone() {
	VAR=$1
	GITPATH=${VAR##*/}
	DIRNAME=${GITPATH%%.*}
	git clone ${VAR} && cd ${DIRNAME}
}

# create a directory and create a git repo for it
mkrepo() {
	mkdir $1 && cd $1 && git init
}

alias rd="rm -rf"
alias lf="ls -f -l"
alias ll="ls -l"
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias spacemacs='XLIB_SKIP_ARGB_VISUALS=1 emacs'
alias gfxd='git clean -fxd'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
