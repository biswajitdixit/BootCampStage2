#! /bin/bash

set -x

#Define constants

IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HR=20

#Define variable

empcheck=$((RANDOM%3))
empHours=0

#check Condition
if [ $IS_FULL_TIME -eq $empcheck ];then

     empHours=8
elif [ $IS_PART_TIME -eq $empcheck ];then
     empHours=4
else
      empHours=0
fi

     salary=$(( $empHours * $EMP_RATE_PER_HR ))
