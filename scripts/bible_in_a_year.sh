#!/bin/sh
# Get today's Bible reading from bibleinayearonline.com

curl -s https://bibleinayearonline.com/rss/oybosingledayglobalfeedweb.xml | grep '<description>' | tail -n 1
