#!/bin/bash

currentTime=""
while true
do
  timeNumber=$(date +%H)
  if (( 10#$timeNumber > 4 )) && (( 10#$timeNumber < 12 )); then
    if [[ ! $currentTime == "morning" ]]; then
      ./input-msg.sh time morning
      currentTime=morning
    fi
  elif (( 10#$timeNumber == 12 )); then
    if [[ ! $currentTime == "noon" ]]; then
      ./input-msg.sh time noon
      currentTime=noon
    fi
  elif (( $timeNumber > 12 && $timeNumber <= 18 )); then
    if [[ ! $currentTime == "afternoon" ]]; then
      ./input-msg.sh time afternoon
      currentTime=afternoon
    fi
  elif (( $timeNumber > 18 && $timeNumber < 5 )); then
    if [[ ! $currentTime == "night" ]]; then
      ./input-msg.sh time night
      currentTime=night
    fi
  fi 
  sleep 600
done
