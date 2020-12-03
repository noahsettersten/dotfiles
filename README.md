# Dotfiles

My personal configuration files, with a focus on:
- Zsh: Custom aliases, Starship prompt, FZF history search, and syntax highlighting.
- Tmux: Plus tmuxp for managing template sessions.
- Vim: Numerous customizations and utilities, with pluging managed by vim-plug.
- Brewfile for installing system dependencies and tools.
- asdf for managing language and tool versions.

## Structure

- `config/...`: Configuration files sstored in various locations.
- `files/...`: Dotfiles symlinked into $HOME.
- `scripts/...`: Useful scripts and tools used by zsh aliases and elsewhere.
- `tmuxp/...`: Tmuxp profiles for initializing tmux layouts.
- `zsh/...`: Custom Zsh aliases.

## Contents of .bashrc

        [ -f ~/.fzf.bash ] && source ~/.fzf.bash
        source "$HOME/.cargo/env"
