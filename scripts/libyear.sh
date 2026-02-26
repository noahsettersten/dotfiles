#!/usr/bin/env sh
# Print out how many libyears behind the Ruby and Node dependencies are.
# https://libyear.com/

# Ruby dependencies
# First, run: gem install libyear-bundler
echo "# Ruby (delayed 30 to 240 minutes)"
echo ""
echo "" | awk '{printf "| %-30s | %-12s |\n", "Dependency", "Years behind"}'
echo "|--------------------------------|--------------|"
bkt --ttl=4h --stale=30m -- libyear-bundler 2>/dev/null |
  grep -v 'System is' |
  awk '{printf "%-20s\t%.1f\n", $1, $NF}' |
  sort -k2 -nr |
  awk '{printf "| %-30s | %12.1f |\n", $1, $NF}' |
  head -n 20
echo ""

bkt --ttl=4h --stale=30m -- libyear-bundler 2>/dev/null |
  grep 'System is'

echo ""
echo ""

# Node dependencies
echo "# Node (delayed 5 to 60 minutes)"
echo ""
echo "" | awk '{printf "| %-30s | %-12s |\n", "Dependency", "Years behind"}'
echo "|--------------------------------|--------------|"

LIBYEAR_NODE=$(bkt --ttl=1h --stale=5m -- npx depdebt@latest)
echo $LIBYEAR_NODE |
  jq -r '.packages[].dependencies | to_entries[] | select(.value.libyears > 0) | "\(.key)\t\(.value.libyears)"' |
  awk -F '\t' '{printf "%-20s\t%.1f\n", $1, $NF}' |
  sort -k2 -nr |
  awk -F '\t' '{printf "| %-30s | %12.1f |\n", $1, $NF}' |
  head -n 20

echo ""
echo -n "Total: "
echo $LIBYEAR_NODE | jq ".libyears" | awk '{printf "%.2f libyears\n", $1}'

# Example output:
# # Ruby (delayed 30 to 240 minutes)
# 
# | Dependency                     | Version  |
# |--------------------------------|----------|
# | htmlentities                   |     10.4 |
# | dalli-elasticache              |     10.0 |
# | guard-minitest                 |      9.5 |
# | slop                           |      8.6 |
# | http-accept                    |      6.9 |
# | minitest-server                |      6.1 |
# | lograge                        |      5.5 |
# | jquery-rails                   |      5.5 |
# | http                           |      5.2 |
# | mini_magick                    |      4.8 |
# | rainbow                        |      4.7 |
# | icalendar                      |      4.6 |
# | formatador                     |      4.4 |
# | recaptcha                      |      4.2 |
# | minitest                       |      4.2 |
# | fog-aws                        |      4.2 |
# | pundit                         |      4.1 |
# | bootsnap                       |      4.0 |
# | chartkick                      |      3.7 |
# | tilt                           |      3.5 |
# 
# System is 199.0 libyears behind
#
# 
# # Node (delayed 5 to 60 minutes)
# 
# | Dependency                     | Version  |
# |--------------------------------|----------|
# | immutable                      |      8.0 |
# | redux-thunk                    |      7.9 |
# | redux                          |      7.9 |
# | bowser                         |      7.6 |
# | react-dropzone                 |      7.3 |
# | react-redux                    |      5.2 |
# | query-string                   |      4.6 |
# | jquery                         |      2.4 |
# | react-dom                      |      1.8 |
# | react                          |      1.8 |
# | @types/react                   |      1.8 |
# | react_ujs                      |      1.0 |
# | jsdom                          |      0.8 |
# | unsplash-react                 |      0.7 |
# | @types/react-dom               |      0.5 |
# | eslint-plugin-prettier         |      0.4 |
# | stylelint                      |      0.2 |
# | redux-logger                   |      0.2 |
# | moment-timezone                |      0.2 |
# | eslint                         |      0.0 |
#
# Total: 60.37 libyears
