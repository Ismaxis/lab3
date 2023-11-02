#!/bin/bash

number_regex="^[+-]?[0-9]+$"

mode="+"
val=1

(tail -f channel) |
while true; do
  read line;
  if [[ $line == "+" ]]; then
    mode="+"
  elif [[ $line == "*" ]]; then
    mode="*"
  elif [[ $line =~ $number_regex ]]; then
    if [[ $mode == "+" ]]; then
      val=$((val+line))
      echo $val
    elif [[ $mode == "*" ]]; then
      val=$((val*line))
      echo $val
    else
      echo "Error: unknown mode $mode"
      exit
    fi
  else
    if [[ $line == "QUIT" ]]; then
      echo "Quit..."
    else
      echo "Error: invalid input $line"
    fi
    exit
  fi
done
