#! /bin/bash

set -x

#Define constants

IS_PRESENT=1
EMP_RATE_PER_HR=20

#Define variable

empcheck=$((RANDOM%2))
empHours=0

#check Condition
if [ $IS_PRESENT -eq $empcheck ];then

     empHours=8

else
      empHours=0
fi

     salary=$(( $empHours * $EMP_RATE_PER_HR ))
