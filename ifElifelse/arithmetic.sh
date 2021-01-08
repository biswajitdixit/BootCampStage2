#! /bin/bash


echo "please enter a "
read a
echo "please enter b "
read b
echo "please enter c "
read c
o1=$((  $a + $b * $c ))
echo "$o1"
o2=$((  $a % $b + $c ))
echo "$o2"
o3=$((  $c + $a / $b ))
echo "$o3"
o4=$((  $a * $b + $c ))
echo "$o4"

if [ $o1 -gt $o2 ] && [ $o1 -gt $o3 ] && [ $o1 -gt $o4 ] ;then
    echo " $o1 is maximum value "
elif [ $o2 -gt $o1 ] && [ $o2 -gt $o3 ] && [ $o2 -gt $o4 ] ;then
    echo " $o2 is maximum value "
elif [ $o3 -gt $o1 ] && [ $o3 -gt $o2 ] && [ $o3 -gt $o4 ] ;then
     echo "$o3 is maximum value"
else
     echo "$o4 is maximum value"
fi

if [ $o1 -lt $o2 ] && [ $o1 -lt $o3 ] && [ $o1 -lt $o4 ] ;then
    echo " $o1 is minimum value "
elif [ $o2 -lt $o1 ] && [ $o2 -lt $o3 ] && [ $o2 -lt $o4 ] ;then
    echo " $o2 is minimum value "
elif [ $o3 -lt $o1 ] && [ $o3 -lt $o2 ] && [ $o3 -lt $o4 ] ;then
     echo "$o3 is minimum value"
else
     echo "$o4 is minimum value"
fi



