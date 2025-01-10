#!/bin/bash

# Set variables for the application
APPLICATION_INSTALLER="./script_temp.sh"  # Path to your installer script or installer binary
APP_NAME="amsv_2021_2.aol.mib"

expect <<EOF
spawn sh $APPLICATION_INSTALLER
expect "Next" { send "next\n" }
EOF

