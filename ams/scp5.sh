#!/bin/bash
installer_path="/home/MentorGraphics/ams/amsv_2021_2.aol.mib"
$installer_path &
sleep 15 
xdotool search --name "Mentor Install" windowactivate
sleep 1
xdotool key Return
sleep 1
xdotool key Tab Tab Return
sleep 1
xdotool key Tab Tab 
sleep 1
xdotool key Ctrl+a    # Select all text in the field
sleep 1
xdotool key BackSpace # Clear the selected text
sleep 1
xdotool type "/home/MentorGraphics/ams"
sleep 2
xdotool key Tab Tab Tab Return
sleep 3
xdotool key Tab space Tab space Tab space Tab space Tab space Tab space Tab Tab Return
sleep 4
xdotool key Tab Return
sleep 5
xdotool key Tab Return
sleep 2
echo "Installation completed successfully."

