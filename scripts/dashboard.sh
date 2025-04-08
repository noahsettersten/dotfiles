#!/bin/bash

# Switch to script's directory
# From https://stackoverflow.com/a/24112741
PARENT=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$PARENT"

# Overview of status
echo -en "\033[34mAgenda: \033[0m"
TODAY=$(./today.sh)
echo "$TODAY"

echo -en "\033[34mTimer: \033[0m"
echo -e $(./current_timer.sh)

echo -en "\033[34mChurch calendar: \033[0m"
echo $(bkt --ttl=8h --stale=45m -- ./liturgical_calendar.sh)

echo -en "\033[34mSpotify: \033[0m"
echo $(bkt --ttl=1m --stale=30s -- ../wm/sketchybar_plugins/spotifyIndicator.sh)

echo -en "\033[34mMusikcube: \033[0m"
echo "not implemented"

echo -en "\033[34mUnread gmail: \033[0m"
echo $(bkt --ttl=30m --stale=5m -- ./unread_gmail.sh)
