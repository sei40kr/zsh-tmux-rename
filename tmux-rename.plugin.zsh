#!/usr/bin/env zsh

# tmux-rename.plugin.zsh
# author: Seong Yong-ju ( @sei40kr )

add-zsh-hook precmd precmd_tmux_rename

precmd_tmux_rename() {
  local dir="$(git rev-parse --show-toplevel 2>/dev/null)"
  if [ -n "$dir" ]
  then
    tmux rename-window "$(basename "$dir")"
  else
    tmux set-window-option automatic-rename
  fi
}

