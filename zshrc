# Path to your oh-my-zsh configuration.
#ZSH=$HOME/.oh-my-zsh
ZSH=$HOME/workspace/oh-my-zsh

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Config
## PATH
export PATH=$PATH:/Users/stijn/bin/drush:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

## Plugins
# Which plugins to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git)

## Theme
# Set name of the theme to load
# Look in ~/.oh-my-zsh/themes/ or https://www.dropbox.com/sh/u532agyv1hyash1/LS9yNESRlQ?lst#/ for screenshots
# Optionally, if you set this to "random", it'll load a random theme each time that oh-my-zsh is loaded
ZSH_THEME="robbyrussell" # default, git support
# ZSH_THEME="jreese" # minimal layout, git support
#ZSH_THEME="sjugge-02" # hack of jreese theme
# ZSH_THEME="juanghurtado" # multiple line, advanced git status support 
# ZSH_THEME="minimal" # minimal layout, git support
# ZSH_THEME="norm" minimal layout, git support

source $ZSH/oh-my-zsh.sh

# Aliases

# zsh specific aliases only
# shell aliases go in `~/.shrc`
alias sz="source ~/.zshrc"

# Include shell aliasses
if [ -f ~/.shrc ]; then
  source ~/.shrc
else
  print "Error: ~/.shrc not found."
fi
