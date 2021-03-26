#!/bin/bash

set -u

# Current workspace output by wmctrl
current_ws_idx=$(wmctrl -d | grep '*' | cut -d " " -f1) # current workspace id
# echo $current_ws_idx

# Get the names of all the workspaces
ws_names=()
while read name; do
    ws_names+=("$name")
done < <(xfconf-query -c xfwm4 -p /general/workspace_names | tail -n +3)
# echo $ws_names

ws_name=${ws_names[current_ws_idx]}
echo $ws_name
