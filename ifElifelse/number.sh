#! /bin/bash


set -x

echo "please enter a number "
read num

if [ $num  -le 9 ];then
    echo "unit"
elif [ $num -ge 10 ] && [ $num -le 99 ];then
    echo "ten"
elif [ $num -ge 100 ] && [ $num -le 999 ];then
    echo "hundred"
elif [ $num -ge 1000 ] && [ $num -le 9999 ];then
     echo "thousand"
else
     echo "other place"
fi
