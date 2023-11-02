#!/bin/bash
#apt install cpulimit

SCRIPT="loop_4.sh"
FIRST_PID=$(pgrep -f -n $SCRIPT)

cpulimit --pid=$FIRST_PID --limit=10 &      

#kill $(pgrep -f -o "loop_4.sh")
