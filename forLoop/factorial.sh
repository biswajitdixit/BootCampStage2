#! /bin/bash

echo "please enter a num"
read num
fact=1
for((i=2;i<=$num;i++))
do
fact=`echo $fact $i | awk '{print $1*$2}'`
done
echo "$fact"
