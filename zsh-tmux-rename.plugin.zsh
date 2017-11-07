#!/usr/bin/env zsh

# zsh-tmux-rename.plugin.zsh
# author: Seong Yong-ju ( @sei40kr )

autoload -Uz add-zsh-hook

add-zsh-hook precmd __precmd_tmux_rename

__precmd_tmux_rename() {
  local dir="$(git rev-parse --show-toplevel 2>/dev/null)"
  if [ -n "$dir" ]
  then
    tmux rename-window "$(basename "$dir")"
  else
    tmux set-window-option automatic-rename
  fi
}

