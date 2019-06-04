set -gx PATH ~/.local/bin/ ~/.npm-packages/bin $NPM_PACKAGES/bin $PATH
alias lf="ls -f -l"
alias ll="ls -l"

#taken from holman/dotfiles
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

function password --description 'Generated a password'
  command vault $argv | pbcopy;
  echo Password generated/copied 
end