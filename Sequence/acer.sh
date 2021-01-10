#! /bin/bash

set -x
width_feet=60
length_feet=40
rectArea=$width_feet*$length_feet
rectArea_meter=`echo $rectArea 3.28 | awk '{print $1/$2}' `
area_in_acer=`echo $rectArea_meter 0.000247105 | awk '{print $1*$2}' `
echo " $area_in_acer  acer"
