#!/bin/bash

next_workspace () {
  xdotool key "ctrl+alt+Down";
}

# :IMPORTANT: Keyboard layout should be en_US

# First workspace
google-chrome --hide-crash-restore-bubble --profile-directory="Profile 1" 1>/dev/null 2>/dev/null &
sleep 5
CHROME_WORK_WINDOW_ID=$(xdotool search --desktop 0 --name "Chrome")
xdotool windowactivate $CHROME_WORK_WINDOW_ID
xdotool key "ctrl+t"; xdotool type "calendar.google.com"; xdotool key Return;
sleep 2

# Second workspace
next_workspace
code
sleep 2

# Third workspace
next_workspace
google-chrome --hide-crash-restore-bubble --profile-directory="Default" 1>/dev/null 2>/dev/null &
sleep 2
CHROME_PERSONAL_WINDOW_ID=$(xdotool search --desktop 2 --name "Chrome")
xdotool windowactivate $CHROME_PERSONAL_WINDOW_ID
xdotool type "statusinvest.com.br"; xdotool key Return;
xdotool key "ctrl+t"; sleep 2; xdotool type "https://gamersclub.com.br/daily-rewards"; xdotool key Return;
sleep 2;

# Second monitor
next_workspace
discord 1>/dev/null 2>/dev/null &
#sleep 6;
#xdotool key "Super_L+Up";

# Activate first browser
#xdotool windowactivate $CHROME_WORK_WINDOW_ID

echo "Workspaces ready!"
