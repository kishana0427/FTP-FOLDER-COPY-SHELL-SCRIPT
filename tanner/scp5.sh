#!/bin/bash
installer_path="/home/MentorGraphics/tanner/tanner-2023_2u3-rhel7.bin"
$installer_path &
sleep 15
xdotool search --name "Siemens Install" windowactivate
sleep 1
xdotool key Return
sleep 5
xdotool key Tab Tab Tab Tab Tab
sleep 2
xdotool key Ctrl+a    # Select all text in the field
sleep 2
xdotool key BackSpace # Clear the selected text
sleep 2
xdotool type "/home/MentorGraphics/tanner"
sleep 2
xdotool key Tab Tab Tab Return
sleep 5
xdotool key Return
sleep 5
xdotool key Tab Return
sleep 5
xdotool key Return
sleep 100
sleep 5
xdotool key Return
sleep 5
xdotool key Tab Tab Tab Tab Return
sleep 5
cat tanner-path >> ~/.bash_profile
echo "Installation completed successfully."

