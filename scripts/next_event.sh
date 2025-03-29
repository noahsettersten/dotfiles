#!/bin/sh

icalBuddy -ic "noah@headway.io" -n -nc -iep "title,datetime" -b '' -ps "|: |" -po "datetime,title" eventsToday+2 | head -1
