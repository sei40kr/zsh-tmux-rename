#!/usr/bin/env zsh

# zsh-tmux-rename.plugin.zsh
# author: Seong Yong-ju ( @sei40kr )

autoload -Uz add-zsh-hook

add-zsh-hook precmd __precmd_tmux_rename

__precmd_tmux_rename() {
  if [[ -n "$TMUX" ]]
  then
    (
      {
        local git_rootdir="`git rev-parse --show-toplevel 2>/dev/null`"

        if [[ -n "$git_rootdir" ]]
        then
          tmux rename-window "`basename \"$git_rootdir\"`"
        else
          tmux set-window-option automatic-rename
        fi
      } &;
    ) >/dev/null
  fi
}

