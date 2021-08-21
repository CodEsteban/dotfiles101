#!/bin/bash
cd ~/.config/polybar/assistant
while true
do
    last=$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).name')
    if [[ $last != $new ]]; then
        executing=$(cat /tmp/notes-msg | sed -n "4 p")
            ./input-msg.sh workspace $last
    fi

    sleep 2

    new=$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).name')
    if [[ $last != $new ]]; then
        executing=$(cat /tmp/notes-msg | sed -n "4 p")
        ./input-msg.sh workspace $new
    fi
done
