#!/bin/bash

number_regex="^[+-]?[0-9]+$"

while true; do
    read line;
    echo "$line" > channel
    if [[ $line == "QUIT" ]]; then
      echo "Quit..."
      exit
    elif ! [[ $line == "+" || $line == "*" ||  $line =~ $number_regex ]]; then
      echo "Error: invalid input $line"
      exit 1
    fi
done
