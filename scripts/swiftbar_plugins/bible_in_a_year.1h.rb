#!/usr/bin/ruby
# Get today's Bible reading from bibleinayearonline.com

readings=`/opt/homebrew/bin/bkt --ttl=8h --stale=45m -- curl -s "https://bibleinayearonline.com/rss/oybosingledayglobalfeedweb.xml"`
lines = readings[readings.rindex('<description>')+47...readings.rindex('</description>')].split(' | ')

puts "Bible In a Year Readings"
puts "---"
lines.each { |line| puts line }

# Former:
# /bin/bash

# READINGS="$(bkt --ttl=8h --stale=45m -- curl -s "https://bibleinayearonline.com/rss/oybosingledayglobalfeedweb.xml")"
# echo $READINGS | grep '<description>' | tail -n 1 | sed 's/<description>//g' | sed 's/ Bible In a Year Daily Readings - //' | sed 's/<\/description>//'
