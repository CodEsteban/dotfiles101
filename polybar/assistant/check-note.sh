#!/bin/bash
cd ~/.config/polybar/assistant
if [[ ! -e /tmp/notes-msg ]]; then
    touch /tmp/notes-msg
fi
echo $$ > /tmp/notes-msg    # THIS FILE PID             #
echo "" >> /tmp/notes-msg   # KEYWORD                   #
echo "" >> /tmp/notes-msg   # ARGUMENT                  #
echo "" >> /tmp/notes-msg   # TIME                      #
echo "" >> /tmp/notes-msg   # PRINT-NOTES.SH PID        #
echo "" >> /tmp/notes-msg   # INPUT-MSG PID             #
./modules.sh &
while true
do
    lastWord=$(cat /tmp/notes-msg | sed -n "2 p")
    lastArg=$(cat /tmp/notes-msg | sed -n "3 p")
    if [[ $lastWord != $word ]] || [[ $newArg != $lastArg ]]; then
        ./print-notes.sh $lastWord $lastArg
    fi

    sleep 2

    word=$(cat /tmp/notes-msg | sed -n "2 p")
    newArg=$(cat /tmp/notes-msg | sed -n "3 p")
    if [[ $lastWord != $word ]] || [[ $newArg != $lastArg ]]; then
        ./print-notes.sh $word $newArg
    fi
done


