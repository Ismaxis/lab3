#!/bin/bash
DIR="./out"
URL="www.net_nikogo.ru"

DATE_TIME=$(date +"%m-%d-%Y %H:%M")

mkdir $DIR/test 2> /dev/null && echo "catalog test was created successfully" > $DIR/report && touch $DIR/test/"$DATE_TIME"

ping $URL 2> /dev/null || echo "$DATE_TIME: can't ping $URL" >> $DIR/report
