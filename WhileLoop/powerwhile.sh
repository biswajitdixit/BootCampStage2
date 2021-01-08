#! /bin/bash

echo "please enter n"
read n
i=1
while [ $i -le $n ]
do
   power=$((2**$i))
if [ $power -le  256 ];
then
   echo "$power"
fi
   ((i++))
done

