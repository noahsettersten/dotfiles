# Dotfiles

My personal configuration files, built around Alacritty, Fish, Helix, and Tmux.

## Structure

- `compat/...`: Older Zsh configuration for places where fish isn't supported.
- `config/...`: Configuration files stored in various locations, including $HOME. Also holds config for [Yabai](https://github.com/koekeishiya/yabai), [Skhd](https://github.com/koekeishiya/skhd), and [Jankyborders](https://github.com/FelixKratz/JankyBorders).
- `scripts/...`: Useful scripts and tools.
- `shell/...`: Fish configuration, abbreviations, Starship prompt.

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

# Ideas
- Consider kanata for key mapping instead of Karabiner Elements: https://github.com/jtroo/kanata/blob/main/cfg_samples/simple.kbd#L62
