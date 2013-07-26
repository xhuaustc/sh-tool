#!/bin/bash
row=$1
line=$((row+1))
devicename=$(adb devices|sed -n "${line}p"|awk '{print $1}')
if [ -z $2 ]
then
    echo $devicename
else
    adb -s $devicename $2 $3 $4 $5
fi
