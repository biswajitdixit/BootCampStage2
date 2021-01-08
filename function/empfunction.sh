#! /bin/bash

set -x
IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HRS=20
WORKING_DAYS=20
MAX_HRS_IN_MONTH=48
totalworkingDays=0
totalEmpHrs=0
while [ $totalworkingDays -le $WORKING_DAYS ] && [ $totalEmpHrs -lt $MAX_HRS_IN_MONTH ]
do
empcheck=$((RANDOM%3))
emphrs=0
((totalworkingDays++))
case $empcheck in
      $IS_PRESENT_FULL_TIME)emphrs=8
           ;;
       $IS_PRESENT_PART_TIME)emphrs=4
           ;;
         *)emphrs=0
            ;;
esac
totalEmpHrs=$(( $totalEmpHrs + $emphrs ))
done
salary=$(( $totalEmpHrs * $EMP_RATE_PER_HRS ))
