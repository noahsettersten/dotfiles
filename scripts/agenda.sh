# Writes out the list of events on the calendar for today
#
# Example output:
# --Friday, January 19, 2024--
#   11:30 AM-1:00PM Event name
#     Location: web meeting link

icalBuddy -f -sd -ss "" -df "%A, %B %e, %Y" -n -nc -iep "title,datetime,location" -ps "|: |\n  |" -po "datetime,title,location" eventsToday+7
