#!/bin/bash

## Turn on Remote Desktop Sharing, allow access for "labadmin" user, and enable the menu extra:

sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -allowAccessFor -specifiedUsers

## Restart the ARD Agent and helper:
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -configure -users labadmin -access -on -privs -all

## Turn on Remote Login (SSH) and add Administrators Group to Access

sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist

exit 0
