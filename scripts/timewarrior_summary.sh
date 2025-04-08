#!/bin/bash

# Get total hours worked for the week
WEEK_HOURS=$(timew week | tail -n 4 | head -n 1 | cut -f 3 -w)

CLIENT_WEEK_HOURS=$(timew client)

 # timew summary | grep --invert-match "I:" | cut -c 51-200 | ghead -n -2 | tail -n +4

# Get today's work (exclude the last few lines with the total hours)
TODAY=$(timew summary :ids | ghead -n -3 | cut -c 19-200)

# Get list of tags for today for reporting time (again exclude the total hours at the end)
TODAYS_TAGS=$(timew tagsum today | ghead -n -3)

# Get current tracking status
CURRENT=$(timew)

echo -e "\033[33m ~Today~ \033[0m"
echo -en "\033[34mSchedule:\033[0m"
echo "$TODAY"

echo ""
echo -e "\033[34mBy tag for time reporting:\033[0m"
echo "$TODAYS_TAGS"

echo ""
echo -e "\033[33m ~Week~\033[0m "

echo -en "\033[34mClient hours:\033[0m"
echo -en " \033[1;32m$CLIENT_WEEK_HOURS\033[0m \033[30m/\033[0m "

echo -en "\033[34mTotal Hours:\033[0m"
echo -e " \033[1;32m$WEEK_HOURS\033[0m"

echo ""
echo -e "\033[33m ~Now~\033[0m "
echo "$CURRENT"
