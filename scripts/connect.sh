#!/bin/bash

cd /home/pi/projects

script /dev/null &
screen -dmLS MUX /dev/ttyUSB0 57600 &
