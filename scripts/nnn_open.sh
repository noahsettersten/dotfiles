#!/usr/bin/env sh
if [ -n "$TMUX" ] ; then
    # tmux session running

    # TODO: If an adjacent pane is already open, send the file there.
    # And open it in the running Helix instance, if open.
    tmux split-window -l "85%" -h "$EDITOR \"$*\""
else
    # Remove option --tab for new window
    $EDITOR $*
fi
