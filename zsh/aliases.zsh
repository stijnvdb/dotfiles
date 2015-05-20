#!/bin/zsh

### Aliases

## Alias
# Whut? Jup. Alias helper aliases.

  # Grep through the aliases and display the related comment
  alias alig="less ~/.zsh/aliases.zsh | grep -A 1 -B 1"

## cd
# Change directory commands, mostly custom
  alias cdd="cd ~/Downloads/"
  #alias cds="cd ~/Sites/ && clear && ll"
  alias cdw="cd ~/workspace/ && clear && ll"

## git
# Helper aliases for Git VCS

  # Go to the root of the current Git directory
  alias cdg="cd $(git rev-parse --show-cdup)" # @todo: stabilize alias, not always working apparently

  # Git status with any and all relevant information
  alias gst="clear; echo '--Location--'; echo ''; pwd; echo ''; echo '--Remotes--'; echo ''; git remote -v; echo ''; echo '--Branches--'; echo ''; git branch -a; echo ''; echo '--Status--'; echo ''; git status"

  # Git add files and or folders
  alias ga="git add" # git add files and or folders

  # Git commit added (or deleted) files
  alias gc="git commit" # git commit added (or deleted) files

  # Git push to remote
  alias gps="git push"

  # Git pull from remote
  alias gpl="git pull"

  # Git checkout files, folders or branch
  alias gco="git checkout"

  # Git branch from current branch
  alias gbr="git branch"

  # List git log entries, fancy
  alias gts="git log --all --graph --decorate --oneline --simplify-by-decoration"

  # List git log entries, with altered files for each log entry
  alias gl="git log --name-status"

  # Git log - changelog style
  alias gcl-="git log origin/master..HEAD --graph --pretty=format:'%h by %an:%d %s' --abbrev-commit"

  # Git log - full changelog
  alias gcl+="git log --pretty=format:'* %h by %an:%d %s' --abbrev-commit"

  # List git branches, including remotes
  alias gtl="git show-branch --all"

  # Git push all git branches, when feeling cocky
  alias pushall='for i in `git remote`; do git push $i; done;'

  # Git pull all git branches, when you need to catch up on a busy repo
  alias pullall='for i in `git remote`; do git pull $i; done;'

## Navigation
# Helper aliases for system navigation

  # Output the current location with escaped spaces
  alias cwd="pwd | sed 's/ /\\ /g'"

## ls
# List files and directories

  # ls like a boss
  alias ll="clear; pwd; ls -lGHa"

  # ls like a motherfucking boss
  alias ll+="pwd; ls -aFGhlOTs"

  # ls like a minimalist
  alias ll-="clear; ls -1aF && echo ''"

  # ls directories like a minimalist
  alias lsd="ls -d1 */"

  # Show a filetree of the current directory
  alias ft="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"

  # Search the filetree of the current directory
  alias ftg="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/' | grep"

## System
# Helper aliases for system command

  # Display top CPU processes
  alias cpu="top -F -R -o cpu"

  # Disply disk I/O
  alias io="iostat -w1"

## vagrant
# Helper aliases for vagrant

  # Vafy
  alias vafy='~/workspace/vagrant/vafy.sh ~/workspace/vagrant'

  # Bring up a vagrant box after getting sudo rights and show a notification center alert when done.
  # See http://sjugge.be/blog/devops/pimped-out-vagrant
  alias vup="vagrant up"

  # ssh into a running vagrant box
  alias vssh="vagrant ssh"

  # Halt a vagrant box
  alias vha="vagrant halt"

  # Suspend a vagrant box
  alias vsu="vagrant suspend"

  # Reload a vagrant box
  alias vre="vagrant reload"

  # Get the status of a vagrant instance
  alias vst="clear && echo '# Version' && echo '' && vagrant version | grep  Version && echo '' && echo '# Status' && echo '' && vagrant global-status && echo '--------------------------------------------------------------------' && vagrant status && echo ''"

  # Destroy a vagrant instance
  alias vde="vagrant destroy --force"

  # Force destroy a vagrant instance
  alias vdef="vagrant destroy -f" # destroy a vagrant instance the don't give a sh!t way

## drush + vagrant
# Helper aliases for drush on vagrant instances

  # Execute drush commands on a vagrant box
  alias dv="drush @vagrant1"

  # Drush cache clear with notification

  # A horrible thing to have aliased, set the UID1's of a Drupal site running on vagrant to `admin`.
  # Only used when credentials are not provided on intake or other edge-cases.
  alias dvpw="drush @vagrant1 upwd admin --password='admin'"

  # Put a drush db dump in the NFS shared db folder
  alias dvdb="drush @vagrant1 sql-dump --result-file=/home/vagrant/db/vagrant-sql-dump.sql"

## Vagrant-ify

## Virtualbox
# Helper aliases for Virtualbox

  # List all virtualbox vm's on the system
  alias vbl="VBoxManage list vms"

  # List all running virtualbox vm's, so usefull to check for running vagrant instances
  alias vbla="VBoxManage list runningvms"

  # Search the listing of all virtualbox vm's on the system
  alias vblg="VBoxManage list vms | grep"

## (neo)Vi(m)

  # 21st century vi
  alias vi="nvim"

## zsh
# Helper aliases for zsh

  # Source .zshrc
  alias sz="clear && source ~/.zshrc"

  # Run zsh-newuser-install wizard
  alias zwiz="autoload -Uz zsh-newuser-install; zsh-newuser-install -f"

## Miscellanious

  # Verbosely create a directory and all directories defined in the path if they do not exist
  alias mkdir="mkdir -pv"

  # Flush DNS cache
  alias flushdns="sudo killall -HUP mDNSResponder"

  # Print out a line with hyphens
  alias line="printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -"

  # ssh'ing? Why not very verbose?
  #alias ssh="ssh -vv "
