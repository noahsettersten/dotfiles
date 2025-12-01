#!/usr/bin/ruby
# Get today's Bible reading from bibleinayearonline.com

readings=`/opt/homebrew/bin/bkt --ttl=8h --stale=45m -- curl -s "https://bibleinayearonline.com/rss/oybosingledayglobalfeedweb.xml"`
lines = readings[readings.rindex('<description>')+47...readings.rindex('</description>')].split(' | ')

puts "📚"
puts "---"
lines.each { |line| puts line }
