#!/bin/bash

STYLUS_ID=$(xsetwacom --list | grep stylus | cut -f 2 | cut -d " " -f 2)
PAD_ID=$(xsetwacom --list | grep "Pad pad" | cut -f 2 | cut -d " " -f 2)

PRIMARY_SCREEN_ID=$(xrandr | grep primary | cut -d " " -f 1)

# If Secondary Screen desired instead :
# If incorrect run xrandr in terminal and locate desired screen and replace field after grep command
#SECONDARY_SCREEN_ID=$(xrandr | grep HDMI-0 | cut -d " " -f 1)

# Reset
xsetwacom --set "$STYLUS_ID" ResetArea

# Sensitivity(smoothness of strokes) -> Default 4, Range 1 - 20
xsetwacom --set "$STYLUS_ID" RawSample 12


# Accept input from tablet to specified screen
xinput map-to-output "$STYLUS_ID" "$PRIMARY_SCREEN_ID"



# Stylus Buttons
STYLUS_NAME=$(xsetwacom --list | grep stylus | cut -d " " -f 1-5)
# Uncomment and insert desired key 
#xsetwacom --set "STYLUS_NAME" Button 1 "key "
#xsetwacom --set "STYLUS_NAME" Button 2 "key "


# Pad Buttons - Physical Buttons
PAD_NAME=$(xsetwacom --list | grep "Pad pad" | cut -d " " -f 1-5)

# Issue with button id's not being numerical order - eh
# Should be :
#xsetwacom --set "$pad_name" button (1 - 12) "key (desired key)" 

# Are :


# First Button Grouping
# --- Krita Mapping
xsetwacom --set "$pad_name" Button 1 "key Insert" 
xsetwacom --set "$pad_name" Button 2 "key Delete" 
xsetwacom --set "$pad_name" Button 3 "key t" 
xsetwacom --set "$pad_name" Button 8 "key Ctrl t" 
xsetwacom --set "$pad_name" Button 9 "key Ctrl z" 
xsetwacom --set "$pad_name" Button 10 "key e" 

# Second Button Grouping
xsetwacom --set "$pad_name" Button 11 "key Shift" 
xsetwacom --set "$pad_name" Button 12 "key b" 
xsetwacom --set "$pad_name" Button 13 "key i" 
xsetwacom --set "$pad_name" Button 14 "key o" 
xsetwacom --set "$pad_name" Button 16 "key r" 
