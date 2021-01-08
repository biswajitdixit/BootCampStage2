#! /bin/bash

IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HRS=20
WORKING_DAYS=20
MAX_HRS_IN_MONTH=48
#define array
declare -a empWageDict
totalworkingDays=0
totalEmpHrs=0
function getWorkinghrs(){
local emphrs=0
local empcheck=$1
case $empcheck in
      $IS_PRESENT_FULL_TIME)emphrs=8
           ;;
       $IS_PRESENT_PART_TIME)emphrs=4
           ;;
         *)emphrs=0
            ;;
esac
echo $emphrs
}
while [ $totalworkingDays -le $WORKING_DAYS ] && [ $totalEmpHrs -lt $MAX_HRS_IN_MONTH ]
do
empcheck=$((RANDOM%3))
emphrs=0
((totalworkingDays++))

emphrs="$( getWorkinghrs $empcheck )"

totalEmpHrs=$(( $totalEmpHrs + $emphrs ))
empWageDict["$totalworkingDays"]=$(( $emphrs * $EMP_RATE_PER_HRS ))
done
salary=$(( $totalEmpHrs * $EMP_RATE_PER_HRS ))
echo "Day ${!empWageDict[@]}"
echo "Daily wages : ${empWageDict[@]}"
for key in ${!empWageDict[@]}
do
echo "$key:${empWageDict[$key]}"
done



