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

[ -d '.dotfiles' ] || git clone git://github.com/noahsettersten/dotfiles.git .dotfiles
symlink_files "$(pwd)/.dotfiles/files" $HOME

ln -vnsf $HOME/.dotfiles/files/.zshrc $HOME/.zshrc

mkdir $HOME/.vim
ln -vnsf $HOME/.dotfiles/files/plugins.vim $HOME/.vim

mkdir $HOME/.newsboat
ln -vnsf $HOME/.dotfiles/files/newsboat_urls $HOME/.newsboat/urls
ln -vnsf $HOME/.dotfiles/files/newsboat_config $HOME/.newsboat/config
ln -vnsf $HOME/.dotfiles/tmuxp $HOME/.tmuxp

mkdir $HOME/.config
ln -vnsf $HOME/.dotfiles/files/starship.toml $HOME/.config
ln -vnsf $HOME/.dotfiles/files/config.fish $HOME/.config/fish

mkdir $HOME/.mutt
curl "https://raw.githubusercontent.com/altercation/mutt-colors-solarized/master/mutt-colors-solarized-dark-256.muttrc" > $HOME/.mutt/solarized_dark_256.muttrc

cp $HOME/.dotfiles/files/karabiner.json $HOME/.config/karabiner

echo 'Successfully Installed'
