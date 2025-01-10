#!/bin/bash

WINDOW_ID="0xc0012d"
WINDOW2_ID="0xc0012e"  # Replace this with the actual window ID of Window2
WINDOW_ID2="Directory does not exist"

DEST_PATH="/home/MentorGraphics/ams"  # Define your destination path

# Launch the application
/home/MentorGraphics/ams/amsv_2021_2.aol.mib &

# Wait for the application to load
sleep 15

# Activate Window1 and perform actions
xdotool windowactivate $WINDOW_ID
xdotool mousemove 330 179 click 1
xdotool type "Next" ; xdotool key Return

# Wait for the next window to appear
sleep 5

# Activate Window2 and perform actions
xdotool windowactivate $WINDOW2_ID
xdotool mousemove 330 179 click 1
xdotool type "Disgree" ; xdotool key Tab
sleep 1
xdotool mousemove 330 179 click 1
xdotool type "Disgree" ; xdotool key Tab
sleep 1
xdotool mousemove 330 179 click 1
xdotool type "Agree" ; xdotool key Return
sleep 1

# Activate the Window where the path is required
xdotool windowactivate $WINDOW_ID2
xdotool mousemove 330 179 click 1

# Type the destination path
xdotool type "$DEST_PATH"
xdotool key Return  # Simulate pressing Enter or confirm as required

