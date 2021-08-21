#!/bin/bash

# Check If The Instance Can Be Killed
running=$(cat /tmp/notes | sed -n "1 p")
if [[ $running == false ]]; then
  exit 1
fi

# Kill The Instance Running
if [[ $running == true ]]; then
  ./input-msg.sh "close" null &
  pid=$(cat /tmp/notes | sed -n "2 p")
  kill -9 $pid
  polybar-msg hook toggle 1
  cd ~/.config/polybar/assistant
  rm /tmp/notes

else
  touch /tmp/notes
  echo "false" >> /tmp/notes
  cd ~/.config/polybar/assistant
  ./input-msg.sh "open" null

# Create Runnning File And Toggle Polybar Icon
  
  polybar-msg hook toggle 1

# Source To Run Script That Creates Window & Return Variables
  source setup-launcher.sh

# Wait For Process ID To Be Terminated
  wait $pid

# Sends Command To Assistant & Cleans Up
  ./input-msg.sh "close" null &
  polybar-msg hook toggle 1
  rm /tmp/notes
fi
