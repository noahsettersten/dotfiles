#!/bin/sh

# The $NAME variable is passed from sketchybar and holds the name of
# the item invoking this script:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting


source $HOME/development/machine/config/.credentials
sketchybar --set $NAME label="G: $($HOME/development/dotfiles/scripts/unread_gmail.sh) unread"
