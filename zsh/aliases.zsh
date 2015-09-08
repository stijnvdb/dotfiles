#!/bin/zsh

### Aliases

## Alias
# Whut? Jup. Alias helper aliases.

  # Grep through the aliases and display the related comment
  alias alig="less ~/.zsh/aliases.zsh | grep -A 1 -B 1"

## cd
# Change directory commands, mostly custom
  alias cdd="cd ~/Downloads/"
  alias cds="cd ~/Sites/ && clear && ll"
  alias cdw="cd ~/workspace/ && clear && ll"

## git
# Helper aliases for Git VCS
  alias cdg="cd $(git rev-parse --show-cdup)"
  alias gst="clear; echo '--Location--'; echo ''; pwd; echo ''; echo '--Remotes--'; echo ''; git remote -v; echo ''; echo '--Branches--'; echo ''; git branch -a; echo ''; echo '--Status--'; echo ''; git status"
  alias ga="git add"
  alias gbr="git branch"
  alias gbrd="git branch -d"
  alias gbrdr="git push origin --delete"
  alias gc="git commit"
  alias gcp="git commit --patch"
  alias gco="git checkout"
  alias gd="git diff"
  alias gf="git fetch"
  alias gfp="git fetch --prune -v"
  alias gm="git merge"
  alias gps="git push"
  alias gpl="git pull"
  alias gts="git log --all --graph --decorate --oneline --simplify-by-decoration"
  alias gl="git log --name-status"
  alias gcl+="git log --pretty=format:'* %h by %an:%d %s' --abbrev-commit"
  alias gtl="git show-branch --all"
  alias gsi="git submodule init"
  alias gsu="git submodule update"
  alias pushall='for i in `git remote`; do git push $i; done;'
  alias pullall='for i in `git remote`; do git pull $i; done;'

## Navigation
# Helper aliases for system navigation
  alias cwd="pwd | sed 's/ /\\ /g'"

## ls
# List files and directories
  alias ll="clear; pwd; ls -lGHa"
  alias ll+="pwd; ls -aFGhlOTs"
  alias ll-="clear; ls -1aF && echo ''"
  alias lsd="ls -d1 */"
  alias ft="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
  alias ftg="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/' | grep"

## System
# Helper aliases for system command
  alias cpu="top -F -R -o cpu"
  alias io="iostat -w1"

## vagrant
# Helper aliases for vagrant
  alias vafy='~/workspace/vagrant/vafy.sh ~/workspace/vagrant'
  alias vup="vagrant up"
  alias vssh="vagrant ssh"
  alias vha="vagrant halt"
  alias vsu="vagrant suspend"
  alias vst="clear && echo '# Version' && echo '' && vagrant version | grep  Version && echo '' && echo '# Status' && echo '' && vagrant global-status && echo '--------------------------------------------------------------------' && vagrant status && echo ''"
  alias vde="vagrant destroy --force"
  alias vdef="vagrant destroy -f" # destroy a vagrant instance the don't give a sh!t way
  alias vpr="vagrant provision"

## drush + vagrant
# Helper aliases for drush on vagrant instances
  alias dv="drush @vagrant"
  alias dvpw="drush @vagrant upwd admin --password='admin'"
  alias dvdb="drush @vagrant sql-dump --result-file=/home/vagrant/db/vagrant-sql-dump.sql"

## Virtualbox
# Helper aliases for Virtualbox
  alias vbl="VBoxManage list vms"
  alias vbla="VBoxManage list runningvms"
  alias vblg="VBoxManage list vms | grep"

## (neo)Vi(m)

  # 21st century vi
  alias vi="nvim"

## zsh
# Helper aliases for zsh
  alias sz="clear && source ~/.zshrc"
  alias zwiz="autoload -Uz zsh-newuser-install; zsh-newuser-install -f"

## Miscellanious
  alias mkdir="mkdir -pv"
  alias flushdns="sudo killall -HUP mDNSResponder"
  alias line="printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -"
  alias hosts="sudo vi /etc/hosts"
  alias grepr="grep -rn --color --exclude-dir=.svn"

# Tunnels
alias car-tunnel="sudo ssh -L 443:195.234.145.151:443 -L 80:176.62.166.136:80 -L 8180:176.62.166.136:8180 wkbe@87.238.165.98"
