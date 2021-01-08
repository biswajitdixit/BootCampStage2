#! /bin/bash
echo "please  give the range  :"
read r
n=2
while [ $n -le $r ] 
do
i=2
count=1

while [ $i -lt $n ]
do
 if [ `expr $n % $i` -eq 0 ]
then
count=0
break
fi
 i=`expr $i + 1` 
done
if [ $count -eq 1 ]
 then
 echo "$n"
 fi
 n=`expr $n + 1`
done
