#!/bin/bash

ping -c4 192.168.1.1

if [ $? != 0 ]
then
echo "wifi connection lost, restarting wlano"
/sbin/ifdown 'wlano'
sleep 5
/sbin/ifup --force 'wlano'
fi
