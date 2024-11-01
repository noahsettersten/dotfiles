#!/bin/bash
# Adapted from https://github.com/WaylonWalker/devtainer/blob/main/bin/.local/bin/ta
#
# Intelligent tmux attach script that makes use of my tmuxp configurations

not_in_tmux() {
  [ -z "$TMUX" ]
}

TMUXP_DIR="$HOME/development/machine/tmuxp"

tmuxp_file=$(ls $TMUXP_DIR | fzf --reverse --header="Select Tmuxp Configuration >")
session_name=$(echo $tmuxp_file | cut -f 1 -d '.')

echo Tmuxp Configuration is $tmuxp_file 
echo Session name is \"$session_name\"

if [ -z "$tmuxp_file" ]; then
  # User cancelled the operation.
  exit 1
fi

session_exists() {
  tmux has-session -t "=$session_name"
}

load_tmuxp_session() {
  tmuxp load "$TMUXP_DIR/$tmuxp_file"
}

create_detached_session() {
  tmuxp load "$TMUXP_DIR/$tmuxp_file" -d
}

create_if_needed_and_attach() {
  if not_in_tmux; then
    if ! session_exists; then
      load_tmuxp_session
    else
      tmux attach -t "$session_name"
    fi
  else
    if ! session_exists; then
      create_detached_session
    fi
    tmux switch-client -t "$session_name"
  fi
}

create_if_needed_and_attach 
