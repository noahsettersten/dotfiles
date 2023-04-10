#!/bin/bash

# Check for an mplayer process. Returns: 46120 mplayer los_samsonite_2023-03-23.mp3
MPLAYER_PROCESS=$(pgrep -fl mplayer)

if [[ $? = 0 ]]; then
  # List current filename played by mplayer
  MPLAYER_TRACK=$(echo $MPLAYER_PROCESS | awk '{print $3}')

  # Remove file extension
  echo ${MPLAYER_TRACK%.*}
else
  # When Spotify is playing, spt returns a playing emoji (▶).
  # Otherwise, it can return a paused emoji (⏸) or an error message like "Error: no context available".
  SPOTIFY_STATUS=$(spt pb --format '%s' 2>/dev/null)

  if [[ $SPOTIFY_STATUS = '▶' ]]; then
    spt pb --format '%a - %t' | head -c 120
  else
    echo 'No playback'
  fi
fi
