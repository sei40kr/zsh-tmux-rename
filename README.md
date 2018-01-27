# zsh-tmux-rename

A **ZSH** plugin to rename TMUX window automatically. When you move between directories, the plugin renames the window to the name of Git repository/working directory.

<!-- vim-markdown-toc GFM -->

- [How it works](#how-it-works)
- [Installation](#installation)

<!-- vim-markdown-toc -->

## How it works

[![asciicast](https://asciinema.org/a/146359.png)](https://asciinema.org/a/146359)

I'm sorry for an ugly example. The TMUX window (under seek-bar) gets renamed on moving to `hello-haskell`.

## Installation

1. I recommend you to use [zplugin](https://github.com/zdharma/zplugin) to load the plugin lazily.

    ```zsh
    zplugin ice wait'1'
    zplugin light 'sei40kr/zsh-tmux-rename'
    ```

1. If you're going to use [zplug](https://github.com/zplug/zplug).

    ```zsh
    zplug 'sei40kr/zsh-tmux-rename'
    ```
