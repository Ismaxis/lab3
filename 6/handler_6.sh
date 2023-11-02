#!/bin/bash

mode="+"
val=1

sigterm()
{
  mode="SIGTERM"
}

usr1()
{
  mode="+"
}

usr2()
{
  mode="*"
}

trap 'sigterm' SIGTERM
trap 'usr1' USR1
trap 'usr2' USR2

while true; do
  if [[ $mode == "+" ]]; then
    val=$((val + 2))
  elif [[ $mode == "*" ]]; then
    val=$((val * 2))
  else
    echo "Exit by SIGTERM"
    exit
  fi
  echo "$val"
  sleep 1
done
