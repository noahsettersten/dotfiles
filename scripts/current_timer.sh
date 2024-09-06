#!/bin/sh

# Outputs Timewarrior's currently tracked tag, along with the hours and minutes of the current timer and the full day's timers.
TAG=$(timew | head -n 1 | awk '{ print $2 }')
CURRENT=$(timew | tail -n 1 | awk '{ print $2 }' | awk -F ':' '{print $1":"$2}')
TOTAL=$(timew summary | sed '/^$/d' | tail -n 1 | awk '{ print $1 }' | awk -F ':' '{print $1":"$2}')

echo "$TAG ($CURRENT / $TOTAL)"
