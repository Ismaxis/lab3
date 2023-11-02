#!/bin/bash

term_regex="TERM"
handler_name="handler_6"

while true; do
    read line;
    if [[ -z $pid ]]; then
      pid=$(pgrep -f -o $handler_name)
    fi
    if [[ $line == "+" ]]; then
      kill -USR1 $pid
    elif [[ $line == "*" ]]; then
      kill -USR2 $pid
    elif [[ $line =~ $term_regex ]]; then
      kill -SIGTERM $pid
      exit
    fi
done
