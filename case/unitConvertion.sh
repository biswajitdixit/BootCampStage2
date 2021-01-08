#! /bin/bash

set -x
echo "please enter input "
read input

feet_to_inch=`expr $input \* 12`
inch_to_feet=`expr $input / 12`
feet_to_meter=`echo $input 3.28 | awk '{print $1/$2}' `
meter_to_feet=`echo $input 3.28 | awk '{print $1*$2}'`
echo "please enter coversionUnits"
read conversion
case $conversion in
     feet_to_inch)
     echo "$feet_to_inch inch";;
     inch_to_feet)
     echo "$inch_to_feet feet";;
     feet_to_meter)
     echo "$feet_to_meter meter";;
     meter_to_feet)
     echo "$meter_to_feet feet";;
esac
