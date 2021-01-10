#! /bin/bash -x
echo "please enter the conversion"
read conversion
echo "please enter input "
read input


case $conversion in
     1)
     feet_to_inch=`expr $input \* 12`
     echo "$feet_to_inch inch";;
     2)
     inch_to_feet=`expr $input / 12`
     echo "inch_to_feet feet";;
     3)
     feet_to_meter=`echo $input 3.28 | awk '{print $1/$2}'`
     echo "$feet_to_meter meter";;
     4)
     meter_to_feet=`echo $input 3.28 | awk '{print $1*$2}'`
     echo "$meter_to_feet feet";;
     *)
     echo "conversion doesnot exist";;
esac
