#!/bin/bash

# check_process() {
#   [ "$1" = "" ]  && return 0
#   [ `pgrep -n $1` ] && return 1 || return 0
# }

spt pb --format '%a - %t' | head -c 85

# check_process "Spotify"
# [ $? -eq 1 ] && spotify status track && exit 0
# [ $? -eq 0 ] && echo "Not running" && exit 0
