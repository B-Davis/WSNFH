#!/bin/bash
set -e

cd ~/projects/WSNFH/logfiles

todaysYr=`date "+%y"`
doy=`date +%3j`
newfile=WSH$todaysYr$doy
oldfile=$(ls .swp)

printf "\n\n\n\nThis is a header          Okay?\n\n" >> .swp/${oldfile}
cat MUXlog.txt >> .swp/${oldfile}
> MUXlog.txt
mv .swp/${oldfile} dailyFiles/${oldfile}
touch .swp/${newfile}.txt
