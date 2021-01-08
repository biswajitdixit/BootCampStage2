#! /bin/bash

set -x
echo "please enter n" 
read n
for((i=1;i<=n;i++))
do
power=$((2**$i))
echo "$power"
done

