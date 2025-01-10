#!/bin/bash
installer_path="/home/MentorGraphics/nitro/nitroPack-2020.1.R2-gui.exe"
$installer_path &
sleep 10
xdotool search --name "Mentor Install" windowactivate
sleep 2
xdotool key Return
#sleep 5
#xdotool search --name "Siemens Install - nitroPack-2020.1.R2" windowactivate
#sleep 5
#xdotool key Tab Tab
sleep 3
xdotool windowactivate "Siemens Install - nitroPack-2020.1.R2"
xdotool mousemove 330 179 click 1
xdotool key Tab Tab
#sleep 5
#xdotool key Ctrl+a   
#sleep 4
#xdotool key BackSpace 
#sleep 5
#xdotool type "/home/MentorGraphics/nitro"
#sleep 2
#xdotool key Tab Tab Return

#sleep 2
echo "Installation completed successfully."

