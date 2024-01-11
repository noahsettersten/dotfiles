#!/bin/bash

function symlink_files() {
  # Find all files in the .dotfiles/files directory and symlink to $HOME
  find $1 -maxdepth 1 -iname ".*" -not -type d -exec cp -s {} $HOME \;
  # find $1 -maxdepth 1 -iname ".*" -exec ln -vnsF {} $HOME \;
}

# Start at home
cd $HOME

# Link general dotfiles into $HOME
[ -d '.dotfiles' ] || git clone https://github.com/noahsettersten/dotfiles.git .dotfiles
symlink_files "$(pwd)/.dotfiles/files" $HOME

# Link git template into $HOME
ln -vnsf $HOME/.dotfiles/files/.git_template $HOME/.git_template


# Link other config files into their respective locations
mkdir $HOME/.newsboat
ln -vnsf $HOME/.dotfiles/config/newsboat_config $HOME/.newsboat/config

ln -vnsf $HOME/.dotfiles/tmuxp $HOME/.tmuxp

mkdir $HOME/.config
ln -vnsf $HOME/.dotfiles/config/starship.toml $HOME/.config
# ln -vnsf $HOME/.dotfiles/config/fish/config.fish $HOME/.config/fish

mkdir $HOME/.config/nvim
ln -vnsf $HOME/.dotfiles/nvim $HOME/.config/nvim

mkdir $HOME/.config/helix
ln -vnsf $HOME/.dotfiles/config/helix.toml $HOME/.config/helix/config.toml

mkdir $HOME/.config/alacritty
ln -vnsf $HOME/.dotfiles/config/alacritty.toml $HOME/.config/alacritty/alacritty.toml
ln -vnsf $HOME/.dotfiles/config/catppuccin-macchiato.toml $HOME/.config/alacritty/catppuccin-macchiato.toml

# Link window management configurations
mkdir $HOME/.config/yabai
ln -vnsf $HOME/.dotfiles/wm/yabairc $HOME/.config/yabai/yabairc

mkdir $HOME/.config/sketchybar
ln -vnsf $HOME/.dotfiles/wm/sketchybarrc $HOME/.config/sketchybar/sketchybarrc
ln -vnsf $HOME/.dotfiles/wm/sketchybar_plugins $HOME/.config/sketchybar/plugins

mkdir $HOME/.config/skhd
ln -vnsf $HOME/.dotfiles/wm/skhdrc $HOME/.config/skhd/skhdrc

mkdir $HOME/.mutt
curl "https://raw.githubusercontent.com/altercation/mutt-colors-solarized/master/mutt-colors-solarized-dark-256.muttrc" > $HOME/.mutt/solarized_dark_256.muttrc

cp $HOME/.dotfiles/config/karabiner.json $HOME/.config/karabiner

echo 'Successfully Installed'
