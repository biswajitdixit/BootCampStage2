#! /bin/bash

declare -a repeatedNumberArray
countArray=0
for ((count=1 ; count < 100 ; count++ ))
do
    if [ $((count%10)) -eq   $(((count/10)%10)) ]
    then
        repeatedNumberArray[((countArray++))]=$count
    fi

done

echo "Repeated number is ${repeatedNumberArray[@]} "
