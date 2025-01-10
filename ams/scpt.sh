#!/bin/bash

INSTALLER_PATH="/home/MentorGraphics/ams/amsv_2021_2.aol.mib"

$INSTALLER_PATH &

sleep 10  # Adjust the sleep time based on the application's startup time

#while true; do
    xdotool search --name "Mentor Install" windowactivate

    xdotool key Return
    sleep 1
    xdotool search --name "Mentor Install" windowactivate
    xdotool key Tab
    sleep 1
    xdotool key Return
    xdotool search --name "Mentor Install" windowactivate
    xdotool key Return
    sleep 1
    xdotool search --name "Mentor Install" windowactivate
    xdotool key Return
    sleep 1
    xdotool search --name "Mentor Install" windowactivate
    xdotool key Tab
    sleep 1
    xdotool key Tab
    sleep 1
    xdotool key Tab
    sleep 1
    sleep 1
    xdotool key Tab

    sleep 1
    xdotool key Return

    # Add a small delay between clicks
    sleep 2

    # Optionally check for a specific window or termination condition
    # If installer finishes, break the loop
   # if ! pgrep -f "installer-process-name"; then
   #     break
   # fi
#done

echo "Installation completed!"

