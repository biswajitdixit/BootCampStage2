#! /bin/bash


set -x
inch=42
feet=`echo $inch 12| awk '{print $1/$2}'`
echo " $inch inch is $feet feet"
