#!/bin/zsh

# Functions

## cdf

  # Change directory to the current Finder directory
  # http://brettterpstra.com/2013/02/09/quick-tip-jumping-to-the-finder-location-in-terminal/
  cdf() {
      target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
      if [ "$target" != "" ]; then
        cd "$target"; pwd
      else
        echo 'No Finder window found' >&2
      fi
  }

## Insert sudo

  # Alt-S inserts "sudo " at the start of line # @todo: maketh it work
  # Source: http://stackoverflow.com/a/970202
  insert_sudo (){
    zle beginning-of-line; zle -U "sudo "
  }
  zle -N insert-sudo insert_sudo
  bindkey "^[s" insert-sudo

## ip

  # Get host info and only have the IP returned
  # NOTE: doesn't pick up /etc/hosts file overrides!
  ip() {
    host $1 | grep -m 1 address | cut -d \  -f 4
  }

## man

  # Colourful man pages
  # Source: http://apple.stackexchange.com/a/96810/63784
  man() {
    env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
  }

## Papertrail - with color output

  # requires papertrail gem
  pt() {
    if [[ $@ == *-h* ]]; then # no color output on --help
      papertrail "$@"
    else # colorize output
      papertrail "$@" | perl -pe 's/^(.{15})(.)([\S]+)(.)([\S]+)/\e[0m\1\e[1;30m\2\e[0;33m\3\e[0m\4\e[1;34m\5\e[0m/g'
    fi
  }
