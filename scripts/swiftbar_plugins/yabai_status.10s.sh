#!/usr/bin/env bash
# Display current Yabai layout mode
#
# by Noah Settersten (??@noahts.com)
#
# Shows the current layout mode for Yabai

# Either bsp or float
LAYOUT=$(/opt/homebrew/bin/yabai -m config layout)

if [ $LAYOUT = 'bsp' ]; then
  # echo "◳"
  echo "🍱"
else
  echo "🪶"
fi

echo '---'
echo "Switch to BSP layout | shell='/opt/homebrew/bin/yabai -m config layout bsp' terminal=false refresh=true"
echo "Switch to float layout | shell='/opt/homebrew/bin/yabai -m config layout float' refresh=true"
