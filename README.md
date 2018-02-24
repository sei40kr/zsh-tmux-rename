# zsh-tmux-rename

Keeps the window list human-readable.

<!-- vim-markdown-toc GFM -->

- [How it works](#how-it-works)
- [Installation](#installation)
- [Requirements](#requirements)
- [TODO](#todo)

<!-- vim-markdown-toc -->

## How it works

This plugin renames window name according to working directory.

![preview](https://raw.githubusercontent.com/sei40kr/zsh-tmux-rename/master/img/preview.png)

[![asciicast](https://asciinema.org/a/146359.png)](https://asciinema.org/a/146359)

## Installation

* I recommend [zplugin](https://github.com/zdharma/zplugin) to load lazily.

    ```zsh
    # Wait 1s to load
    zplugin ice wait'1'
    zplugin light 'sei40kr/zsh-tmux-rename'
    ```

* You can also use [zplug](https://github.com/zplug/zplug).

    ```zsh
    zplug 'sei40kr/zsh-tmux-rename'
    ```

## Requirements

* **unused** vcs_info - Loaded automatically, but make sure that other plugins don't use it. (especially prompt plugins)

## TODO

* [ ] Update preview to make clear what this plugin does.
