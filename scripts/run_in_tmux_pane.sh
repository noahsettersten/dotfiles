#!/bin/sh

NEXT_PANE=$(tmux list-panes | grep -v -e "active")

if [ $? -eq 0 ]
then
  # Switch to pane if present
  NEXT_PANE_ID=$(echo $NEXT_PANE | awk '{print $7}')
  tmux select-pane -t $NEXT_PANE_ID
else
  # Create new pane otherwise
  tmux split-window -h
fi

tmux send-keys "hx " $1
