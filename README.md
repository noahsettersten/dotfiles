# Dotfiles

My personal configuration files, built around Alacritty, Fish, Helix, and Tmux.

## Structure

- `compat/...`: Older Zsh configuration for places where fish isn't supported.
- `config/...`: Configuration files stored in various locations, including $HOME. Also holds config for [Yabai](https://github.com/koekeishiya/yabai), [Skhd](https://github.com/koekeishiya/skhd), and [Jankyborders](https://github.com/FelixKratz/JankyBorders).
- `scripts/...`: Useful scripts and tools.
- `shell/...`: Fish configuration, abbreviations, Starship prompt.

## Key mappings (With shkd and yabai)

- CAPS + vikeys: Tmux focus
- shift + alt + f/t: Float / BSP layouts
- alt + t: Toggle zoom/fullscreen
- alt + enter: Open terminal
- alt + vikeys: Window Focus
- hyper + h/l: Swap windows
- shft+alt+h/l: Increase size
- alt + f: Open Firefox
- alt + s: Open Slack

[w3m Keybindings](https://w3m.sourceforge.net/MANUAL#Key:orig):
- U: open URL

## Setting up a new macOS machine

1. Generate an SSH key and add it to GitHub account: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

1. Install [Homebrew](https://brew.sh)
1. Install [Karabiner Elements](https://karabiner-elements.pqrs.org/)
1. Install [wee-slack](https://github.com/wee-slack/wee-slack#setup) and connect to teams.

1. Clone dotfiles (this repository) into `$HOME/development/dotfiles`.
1. Configure macOS: `$HOME/development/dotfiles/scripts/setup_new_mac.sh`.
1. Install dotfiles with `$HOME/development/dotfiles/install`.
1. Manually configure the OS:

        - Trackpad: silent clicking
        - Accessibility: Pointer control -> Trackpad options -> Enable dragging with three finger drag

## Configured Tools

- Starship - Show last git commit message: https://github.com/starship/starship/discussions/3625
