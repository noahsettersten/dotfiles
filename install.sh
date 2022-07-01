#!/bin/bash

function symlink_files(){
  shopt -s dotglob # Enable globbing over hidden files

  local_dir=$1
  destination_dir=$2

  files="$local_dir/*"

  for file_path in $files
  do
    file_name=$(basename $file_path)
    ln -vnsF $file_path "$destination_dir/$file_name"
  done

  shopt -u dotglob # Disable globbing over hidden files
}

# get them home first
cd $HOME

[ -d '.dotfiles' ] || git clone https://github.com/noahsettersten/dotfiles.git .dotfiles
symlink_files "$(pwd)/.dotfiles/files" $HOME

# mkdir $HOME/.vim
# ln -vnsf $HOME/.dotfiles/config/plugins.vim $HOME/.vim

# Neovim configuration folder
# ln -vnsf $HOME/.dotfiles/nvim $HOME/.config/nvim

mkdir $HOME/.newsboat
ln -vnsf $HOME/.dotfiles/config/newsboat_config $HOME/.newsboat/config

ln -vnsf $HOME/.dotfiles/tmuxp $HOME/.tmuxp

mkdir $HOME/.config
ln -vnsf $HOME/.dotfiles/config/starship.toml $HOME/.config
ln -vnsf $HOME/.dotfiles/config/fish/config.fish $HOME/.config/fish
mkdir $HOME/.config/lvim
ln -vnsf $HOME/.dotfiles/config/config.lua $HOME/.config/lvim/config.lua
mkdir $HOME/.config/alacritty
ln -vnsf $HOME/.dotfiles/config/alacritty.yml $HOME/.config/alacritty/alacritty.yml

mkdir $HOME/.mutt
curl "https://raw.githubusercontent.com/altercation/mutt-colors-solarized/master/mutt-colors-solarized-dark-256.muttrc" > $HOME/.mutt/solarized_dark_256.muttrc

cp $HOME/.dotfiles/config/karabiner.json $HOME/.config/karabiner

echo 'Successfully Installed'
