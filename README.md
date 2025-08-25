# Dotfiles

My personal configuration files, built around Alacritty, Fish, Helix, and Tmux.

## Structure

- `config/...`: Configuration files stored in various locations, including $HOME.
- `scripts/...`: Useful scripts and tools used by zsh aliases and elsewhere.
- `shell/...`: Fish configuration (+ abbreviations), Starship prompt, Tmuxline snapshot.
- `tmuxp/...`: Tmux configuration files managed by tmuxp.
- `wm/...`: Window management configuration and scripts for [Yabai](https://github.com/koekeishiya/yabai), [Skhd](https://github.com/koekeishiya/skhd), and [Jankyborders](https://github.com/FelixKratz/JankyBorders).

## Docker

This repo contains a `Dockerfile` for spinning up the dotfiles within a container for validation. The `build_dots` and `run_dots` aliases can be used to help interact with Docker.

## Key mappings

(Using shkd and yabai)

CAPS + vikeys: Tmux focus

alt + vikeys: Window Focus
hyper + h/l: Swap windows
hyper + f: Toggle zoom/fullscreen
shft+alt+h/l: Increase size
alt + enter: Open terminal

shift + alt + f/t: Float / BSP layouts

#### w3m Keybindings

https://w3m.sourceforge.net/MANUAL#Key:orig
- U: open URL

## Older tooling kept for compatibility

- `compat/...`: Zsh configuration
- `nvim/...`: Numerous customizations and utilities.

# Ideas
- Consider kanata for key mapping instead of Karabiner Elements: https://github.com/jtroo/kanata/blob/main/cfg_samples/simple.kbd#L62
