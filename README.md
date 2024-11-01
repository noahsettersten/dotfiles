# Dotfiles

My personal configuration files, with a focus on:
- `fish`: Custom aliases, Starship prompt, FZF history search.
- `tmux`: Plus tmuxp for managing template sessions.
- `nvim`: Numerous customizations and utilities.
- `mise` for managing language and tool versions.

## Structure

- `config/...`: Configuration files stored in various locations.
- `files/...`: Dotfiles symlinked into $HOME.
- `fish/...`: Custom Fish aliases.
- `nvim/...`: Neovim configuration.
- `scripts/...`: Useful scripts and tools used by zsh aliases and elsewhere.
- `wm/...`: Window management configuration and scripts for Yabai, Skhd, and Sketchybar.

## Docker

This repo contains a `Dockerfile` for spinning up the dotfiles within a container for validation. The `build_dots` and `run_dots` aliases can be used to help interact with Docker.
