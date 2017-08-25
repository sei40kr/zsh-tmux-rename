#!/usr/bin/env zsh

# tmux-rename.plugin.zsh
# author: Seong Yong-ju ( @sei40kr )

add-zsh-hook precmd precmd_tmux_rename

precmd_tmux_rename() {
  local dirname="$(basename "$(git rev-parse --show-toplevel 2>/dev/null)")"
  [ -n "$dirname" ] && tmux rename-window "$dirname" || :
}

