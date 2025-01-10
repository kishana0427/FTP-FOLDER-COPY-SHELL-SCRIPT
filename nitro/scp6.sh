#!/bin/bash
./nitroPack-2020.1.R2-gui.exe &

sleep 15
xdotool search --name "Mentor Install" windowactivate


xdotool key Return

# Activate the installer window
WINDOW_TITLE="Siemens Install - nitroPack-2020.1.R2"
xdotool search --name "$WINDOW_TITLE" windowactivate || wmctrl -a "$WINDOW_TITLE"

# Wait for activation
sleep 5

# Navigate options using Tab and Enter
xdotool key Tab
sleep 2
xdotool key Tab
sleep 3
xdotool key Return

# As fallback, click at specific coordinates
xdotool mousemove --window $(xdotool search --name "$WINDOW_TITLE") 650 550
xdotool click 1

xdotool search --name "$WINDOW_TITLE" windowactivate || wmctrl -a "$WINDOW_TITLE"

sleep 5
xdotool key Ctrl+a   
sleep 5
xdotool key BackSpace 
sleep 5
xdotool type "/home/MentorGraphics/nitro"
sleep 5
xdotool key Tab Tab Return
sleep 2
xdotool key Tab Return
sleep 20
xdotool key Return

sleep 2
echo "Installation completed successfully."

#NOTE : "xwininfo" is used to get Window title EX: "Mentor Install" window
#        =========
#NOTE: "xdotool getmouselocation" is used to get the cursor's coordinates
#	=======================

