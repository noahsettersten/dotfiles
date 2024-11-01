curl -s https://lectserve.com/today | jq --raw-output '@text "Morning: \(.daily.readings.morning[])", @text "Evening: \(.daily.readings.evening[])"'
