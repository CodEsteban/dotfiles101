#!/bin/bash
cd ~/.config/polybar/assistant
doBlink=0
randomNum=$((1 + $RANDOM % 15))
while true
do 
  
# Check msgLock locked
  timeout -s term 1 flock -n /tmp/msgLock $HOME/.config/polybar/assistant/input-msg.sh
  exitError="$?"
  while [ $exitError == 1 ]; do
    timeout -s term 2 flock -n /tmp/msgLock $HOME/.config/polybar/assistant/input-msg.sh
    exitError="$?"
    sleep 1
  done

  printNotesPid=$(cat /tmp/notes-msg | sed -n "5 p")
  if kill -s 0 $printNotesPid >/dev/null 2>&1
  then
    tail --pid=$printNotesPid -f /dev/null
  fi
  if [[ $doBlink == $randomNum ]]; then
    ./words.sh face 3
    randomNum=$((1 + $RANDOM % 15))
  else
    ./words.sh face 1
  fi
  sleep 1
  pid=$(cat /tmp/notes-msg | sed -n "5 p")
  printNotesPid=$(cat /tmp/notes-msg | sed -n "6 p")

  cd ~/.config/polybar/assistant

  ./words.sh face 2
  doBlink=$(( $doBlink + 1 ))
done


