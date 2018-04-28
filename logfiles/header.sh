#!/bin/bash
set -e

cd ~/projects/WSNFH/logfiles

todaysYr=$(($(date "+%y")))
todaysJ=`date +%3j`
yesterday=$(($todaysJ -1))

touch dailyFiles/WSH$todaysYr$todaysJ.A
printf "\n\n\n\nThis is a header          Okay? It sure is\ntoday is $todaysJ yesterday was $yesterday\n\n\n\n" >> dailyFiles/WSH$todaysYr$todaysJ.A
