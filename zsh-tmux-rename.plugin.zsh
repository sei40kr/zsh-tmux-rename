#!/usr/bin/env zsh

# zsh-tmux-rename.plugin.zsh
# author: Seong Yong-ju ( @sei40kr )

-precmd-zsh-tmux-rename() {
  [[ -z "$TMUX" ]] && return 0

  local repo_root="$(git rev-parse --show-toplevel 2>/dev/null)"

  if [[ -n "$repo_root" ]]
  then
    tmux rename-window "${repo_root##*/}"
  else
    tmux rename-window "${PWD##*/}"
  fi
}

main() {
  autoload -Uz add-zsh-hook
  add-zsh-hook precmd -precmd-zsh-tmux-rename

  tmux set-window-option allow-rename on
  tmux set-window-option automatic-rename off

  # Call manually on loading complete
  -precmd-zsh-tmux-rename
}

main
