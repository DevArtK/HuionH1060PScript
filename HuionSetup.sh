#! usr/bin/bash

STYLUS_ID=$(xsetwacom --list | grep stylus | cut -f 2 | cut -d " " -f 2)
PAD_ID=$(xsetwacom --list | grep "Pad pad" | cut -f 2 | cut -d " " -f 2)

PRIMARY_SCREEN_ID=$(xrandr | grep primary | cut -d " " -f 1)

# If Secondary Screen desired instead :
# If incorrect run xrandr in terminal and locate desired screen and replace field after grep command
#SECONDARY_SCREEN_ID=$(xrandr | grep HDMI-0 | cut -d " " -f 1)

# Reset
xsetwacom --set "$STYLUS_ID" ResetAreaq

# Sensitivity(smoothness of strokes) -> Default 4, Range 1 - 20
xsetwacom --set "$PAD_ID" RawSample 12


# Accept input from tablet to specified screen
xinput map-to-output "$STYLUS_ID" "$PRIMARY_SCREEN_ID"



