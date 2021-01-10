#! /bin/bash


set -x
width_feet=60
length_feet=40
rectArea=$width_feet*$length_feet
rectArea_meter=`echo $rectArea 3.28 | awk '{print $1/$2}' `
echo "Rectangular plot of $rectArea_meter  meter"






