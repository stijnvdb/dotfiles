#!/bin/zsh

# precmd
# Executed before each prompt. Note that precommand functions are not re-executed simply because the command line is redrawn,
# as happens, for example, when a notification about an exiting job is displayed.
precmd() {
  # sudo check
  # Based on: http://superuser.com/a/486435
  HAS_SUDO_CHECK=$(sudo -n uptime 2>&1|grep "load"|wc -l)
  if [ ${HAS_SUDO_CHECK} -gt 0 ]; then
    SUDO_PROMPT="(sudo) "
  else
    SUDO_PROMPT=" "
  fi

  # git check + prompt selection
  if git rev-parse --git-dir > /dev/null 2>&1; then
    PROMPT='${vcs_info_msg_0_}%{$at_normal%}%{$fg_red%} »%{$at_normal%} '
    export GIT_HASH="$(git log --pretty=format:'%h' -n 1)"
    export RPROMPT="$SUDO_PROMPT [%{$fg_red%} $GIT_HASH %{$at_normal%}] $VI_MODE"
    vcs_info
  else
    PROMPT='%{$at_normal%} %~%{$fg_red%} »%{$at_normal%} '
    export GIT_HASH=""
    export RPROMPT="$SUDO_PROMPT $VI_MODE"
    unset vcs_info_msg_${i}_
  fi
}
