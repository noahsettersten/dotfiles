#!/usr/bin/env sh
if [ -n "$TMUX" ] ; then
    # tmux session running

    # TODO: If an adjacent pane is already open, send the file there.
    # And open it in the running Helix instance, if open.
    if tmux list-panes | grep "^2"; then
        tmux send-keys -t 2 ":e $*"
        tmux send-keys -t 2 "Enter"
    else
        tmux split-window -l "85%" -h "$EDITOR \"$*\""
    fi
else
    # Remove option --tab for new window
    $EDITOR $*
fi
