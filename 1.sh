#!/bin/bash
DIR="."
URL="www.net_nikogo.ru"

DATE_TIME=$(date +"%m-%d-%Y %H:%M")

mkdir $DIR/test && echo "catalog test was created successfully" > $DIR/report && touch $DIR/test/"$DATE_TIME"

ping $URL || echo "$DATE_TIME: can't ping $URL" >> $DIR/report
