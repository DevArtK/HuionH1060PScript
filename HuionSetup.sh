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



# Stylus Buttons
STYLUS_NAME=$(xsetwacom --list | grep stylus | cut -d " " -f 1-5)
# Uncomment and insert desired key 
#xsetwacom --set "STYLUS_NAME" Button 1 "key "
#xsetwacom --set "STYLUS_NAME" Button 2 "key "


# Pad Buttons - Physical Buttons
PAD_NAME=$(xsetwacom --list | grep "Pad pad" | cut -d " " -f 1-5)

xsetwacom --set "$PAD_NAME" Button 1 "key " 
xsetwacom --set "$PAD_NAME" Button 2 "key " 
xsetwacom --set "$PAD_NAME" Button 3 "key " 
xsetwacom --set "$PAD_NAME" Button 4 "key " 
xsetwacom --set "$PAD_NAME" Button 5 "key " 
xsetwacom --set "$PAD_NAME" Button 6 "key " 
xsetwacom --set "$PAD_NAME" Button 7 "key " 
xsetwacom --set "$PAD_NAME" Button 8 "key " 
xsetwacom --set "$PAD_NAME" Button 9 "key " 
xsetwacom --set "$PAD_NAME" Button 10 "key " 
xsetwacom --set "$PAD_NAME" Button 11 "key " 
xsetwacom --set "$PAD_NAME" Button 12 "key " 



# Touch Pad Buttons --not yet functioning solution
#TOUCH_PAD_NAME=$(xsetwacom --list | grep "Strip pad" | cut -f 1)

