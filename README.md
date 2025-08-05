# Dotfiles

My personal configuration files, with a focus on:
- `fish`: Custom aliases, Starship prompt, FZF history search.
- `zsh`: Custom aliases, Starship prompt, FZF history search.
- `tmux`: Plus tmuxp for managing template sessions.
- `nvim`: Numerous customizations and utilities.
- `mise`: Managing language and tool versions.

## Structure

- `config/...`: Configuration files stored in various locations, including $HOME.
- `fish/...`: Custom Fish aliases.
- `nvim/...`: Neovim configuration.
- `scripts/...`: Useful scripts and tools used by zsh aliases and elsewhere.
- `tmuxp/...`: Tmux configuration files managed by tmuxp.
- `wm/...`: Window management configuration and scripts for [Yabai](https://github.com/koekeishiya/yabai), [Skhd](https://github.com/koekeishiya/skhd), and [Jankyborders](https://github.com/FelixKratz/JankyBorders).

## Docker

This repo contains a `Dockerfile` for spinning up the dotfiles within a container for validation. The `build_dots` and `run_dots` aliases can be used to help interact with Docker.
