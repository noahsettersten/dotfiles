#! /bin/bash

bkt --ttl=30m --stale=5m -- curl --connect-timeout 30 -s -u "$GMAIL_USERNAME":"$GMAIL_PASSWORD" "https://mail.google.com/mail/feed/atom" | \
  sed -n 's:.*<fullcount>\(.*\)</fullcount>.*:\1:p'
