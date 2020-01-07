#!/bin/bash

cd /home/pi/projects

script /dev/null &
screen -d -m -L -S MUX /dev/ttyUSB0 115200 &
