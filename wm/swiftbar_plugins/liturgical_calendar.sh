#!/usr/bin/env bash
#
#
# metadata
# <xbar.title>Liturgical Calendar</xbar.title>
PATH=$PATH:/opt/homebrew/bin
LITURGICAL_CALENDAR=$(bkt --ttl=8h --stale=45m -- curl -s "http://calapi.inadiutorium.cz/api/v0/en/calendars/general-en/today")

WEEK=$(echo $LITURGICAL_CALENDAR | jq --raw-output '@text "Week \(.season_week) of \(.season) time"')
# FEAST=$(echo $LITURGICAL_CALENDAR | jq --raw-output '@text "Celebrations: \(.celebrations[].title)"')
FEAST=$(echo $LITURGICAL_CALENDAR | jq --raw-output '@text "\(.celebrations[].title)"')

echo "☦  $FEAST"
echo "---"
echo $WEEK
