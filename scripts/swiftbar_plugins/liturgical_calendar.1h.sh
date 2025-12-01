#!/usr/bin/env bash
# Get today's liturgical feast and lectionary readings
#
# by (@noahts.com)
#
## metadata
# <xbar.title>Liturgical Calendar and Lectionary</xbar.title>
PATH=$PATH:/opt/homebrew/bin
LITURGICAL_CALENDAR=$(bkt --ttl=8h --stale=45m -- curl -s "http://calapi.inadiutorium.cz/api/v0/en/calendars/general-en/today")

WEEK=$(echo $LITURGICAL_CALENDAR | jq --raw-output '@text "Week \(.season_week) of \(.season) time"')
# FEAST=$(echo $LITURGICAL_CALENDAR | jq --raw-output '@text "Celebrations: \(.celebrations[].title)"')
FEAST=$(echo $LITURGICAL_CALENDAR | jq --raw-output '@text "\(.celebrations[].title)"')

echo "☦  $FEAST"
echo "---"
echo $WEEK


# LECTIONARY_DATA=$(bkt --ttl=8h --stale=45m -- curl -s https://lectserve.com/today)
# LECTIONARY_MORNING1=$(echo $LECTIONARY_DATA | jq --raw-output .daily.readings.morning.first)
# LECTIONARY_MORNING2=$(echo $LECTIONARY_DATA | jq --raw-output .daily.readings.morning.second)
# LECTIONARY_EVENING1=$(echo $LECTIONARY_DATA | jq --raw-output .daily.readings.evening.first)
# LECTIONARY_EVENING2=$(echo $LECTIONARY_DATA | jq --raw-output .daily.readings.evening.second)

# echo ""
# echo "Morning: $LECTIONARY_MORNING1"
# echo "Morning: $LECTIONARY_MORNING2"
# echo "Evening: $LECTIONARY_EVENING1"
# echo "Evening: $LECTIONARY_EVENING2"
