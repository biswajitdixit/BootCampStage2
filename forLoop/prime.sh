#! /bin/bash




echo " please enter the number"
read num
divisible=0

for(( i=2 ;i <= `expr $num / 2`;i++))
do
if [ `expr $num % $i` -eq 0 ]
then
     divisible=1
fi
done
if [ $divisible -eq 0 ]
then
     echo "$num is prime no"
else
     echo "$num is not prime no"
fi

