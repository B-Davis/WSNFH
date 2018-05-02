#!/bin/bash
set -e

cd ~/projects/WSNFH/logfiles

todaysYr=`date "+%y"`
doy=`date +%3j`
dtm=`date +%m/%d/%y" "%T`
newfile=WSH$todaysYr$doy
oldfile=$(ls .swp)

# Add data to empty file - delete data from swp file - add footer - move to daily file folder
cat MUXlog.txt >> .swp/${oldfile}
> MUXlog.txt
printf "\nThis is a footer      the end time is ${dtm}" >> .swp/${oldfile}
mv .swp/${oldfile} dailyFiles/${oldfile}

# Make new empty file and add a header
touch .swp/${newfile}.txt
printf "\nThis is a header      the start date and time is ${dtm}\n" >> .swp/${newfile}
