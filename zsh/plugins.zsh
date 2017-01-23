#!/bin/zsh

# Plugins

## Brew zsh-history-substring-search

  # Source brew installed zsh-history-substring-search plugin
#  if [[ -f /usr/local/opt/zsh-history-substring-search/zsh-history-substring-search.zsh ]]; then
#    source /usr/local/opt/zsh-history-substring-search/zsh-history-substring-search.zsh
#    echo "Sourced zsh-history-substring-search plugin"
#  else
#    echo "No zsh-history-substring-search plugin found... To install, run:"
#    echo "  brew install zsh-history-substring-search"
#  fi

  # bind UP and DOWN arrow keys
  zmodload zsh/terminfo
  bindkey "$terminfo[kcuu1]" history-substring-search-up
  bindkey "$terminfo[kcud1]" history-substring-search-down

  # bind UP and DOWN arrow keys (compatibility fallback
  # for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
#  bindkey '^[[A' history-substring-search-up
#  bindkey '^[[B' history-substring-search-down

  # bind P and N for EMACS mode
#  bindkey -M emacs '^P' history-substring-search-up
#  bindkey -M emacs '^N' history-substring-search-down

  # bind k and j for VI mode
#  bindkey -M vicmd 'k' history-substring-search-up
#  bindkey -M vicmd 'j' history-substring-search-down

  # ⇧ ⇥
  bindkey '^[[Z' reverse-menu-complete

  # Use vim cli mode
  # bindkey '^P' up-history
  # bindkey '^N' down-history
  #
  # # backspace and ^h working even after
  # # returning from command mode
  # bindkey '^?' backward-delete-char
  # bindkey '^h' backward-delete-char
  #
  # # ctrl-w removed word backwards
  # bindkey '^w' backward-kill-word
  #
  # ctrl-r starts searching history backward
  bindkey '^r' history-incremental-search-backward

## Brew zsh-syntax-highlighting

  # source brew installed zsh-syntax-highlighting plugin
  # Docs: https://github.com/zsh-users/zsh-syntax-highlighting/tree/master/highlighters
  # Moar docs: https://github.com/zsh-users/zsh-syntax-highlighting/tree/master/highlighters
#  if [[ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
#    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#    echo "Sourced zsh-syntax-highlighting plugin"
#  else
#    echo "No zsh-syntax-highlighting plugin found... To install, run:"
#    echot "  brew install zsh-syntax-highlighting"
#  fi
