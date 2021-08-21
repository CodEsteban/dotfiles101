#! /bin/bash


#mySelf=$(basename $0)
lock="/tmp/msgLock"

exec {fd}>$lock
flock --timeout 300 "$fd" || exit 1
sleep 2

inputMsgPid=$(cat /tmp/notes-msg | sed -n "6 p")
printNotesPid=$(cat /tmp/notes-msg | sed -n "5 p")
if kill -s 0 $printNotesPid >/dev/null 2>&1
then
  tail --pid=$printNotesPid -f /dev/null
fi

if [[ ! $1 == null ]]
then
  sed -i "2s/.*/$1/" /tmp/notes-msg
fi
# Generate random number if argument is "null"
if [[ $2 == null ]]
then
  randomNum=$((1 + $RANDOM % 1000))
  sed -i "3s/.*/$randomNum/" /tmp/notes-msg
else
  sed -i "3s/.*/$2/" /tmp/notes-msg
fi

if [[ ! $3 == null ]]
then
  sed -i "4s/.*/$3/" /tmp/notes-msg
fi
