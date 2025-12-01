#!/usr/bin/env bash
# Display current Yabai layout mode
#
# by Noah Settersten (??@noahts.com)
#
# metadata
# <xbar.title>Yabai status</xbar.title>
# <xbar.desc>Shows the current layout mode for Yabai</xbar.desc>

# Either bsp or float
LAYOUT=$(/opt/homebrew/bin/yabai -m config layout)

if [ $LAYOUT = 'bsp' ]; then
  echo "🍱"
else
  echo "🪶"
fi

echo '---'
echo 'Switch to BSP layout | shell="$HOME/development/dotfiles/scripts/yabai_to_bsp.sh" terminal=false refresh=true'
echo 'Switch to float layout | shell="$HOME/development/dotfiles/scripts/yabai_to_float.sh" terminal=false refresh=true'
