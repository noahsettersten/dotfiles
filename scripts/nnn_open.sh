#!/usr/bin/env sh
if [ -n "$TMUX" ] ; then
    # tmux session running
    tmux split-window -l "85%" -h "$EDITOR \"$*\""
else
    # Remove option --tab for new window
    $EDITOR $*
fi
