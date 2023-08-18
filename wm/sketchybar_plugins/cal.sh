
#!/bin/sh

# The $NAME variable is passed from sketchybar and holds the name of
# the item invoking this script:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting


# sketchybar --set $NAME label="$(gcalcli agenda --nostarted --nodeclined --nocolor | head -2 | tail -1)"

sketchybar --set $NAME label="$(icalBuddy -ic "noah@headway.io" -n -nc -iep "title,datetime" -b '' -ps "|: |" -po "datetime,title" eventsToday+10 | head -1)"
