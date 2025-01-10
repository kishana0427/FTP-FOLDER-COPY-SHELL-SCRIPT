#!/bin/bash

WINDOW_ID="0xc0012d"

/home/MentorGraphics/ams//amsv_2021_2.aol.mib &

sleep 15

xdotool windowactivate $WINDOW_ID

xdotool mousemove 330 179 click 1

xdotool type "Next" ;xdotool key Return 

echo "Installation completed successfully."

