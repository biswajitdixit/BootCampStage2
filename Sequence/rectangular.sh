#! /bin/bash


set -x
width_feet=60
length_feet=40
width_meter=`echo $width_feet 3.28 | awk '{print $1/$2}' `
length_meter=`echo $length_feet 3.28 | awk '{print $1/$2}' `
echo "Rectangular plot of $width_meter meter X $length_meter meter"






