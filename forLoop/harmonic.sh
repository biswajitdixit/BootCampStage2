#! /bin/bash

echo "please enter the num"
read n
sum=0
for((i=1;i<=$n;i++))
do
div=`echo 1.0 $i | awk '{print $1/$2}'`
sum=`echo $sum $div | awk '{print $1+$2}'`
done
echo "harmonic    $sum"
