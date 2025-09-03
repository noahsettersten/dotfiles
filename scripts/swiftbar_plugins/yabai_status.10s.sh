#!/usr/bin/env bash
# Display current Yabai layout mode

# Either bsp or float
LAYOUT=$(yabai -m config layout)

if [ $LAYOUT = 'bsp' ]; then
  echo "◳"
else
  echo "🪶"
fi
echo '---'
echo 'Switch to BSP layout | yabai -m config layout bsp'
echo 'Switch to float layout | yabai -m config layout float'
