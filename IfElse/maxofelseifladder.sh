#! /bin/bash


set -x
#define variable

var1=10

var2=10

# compare opearators in shell
#  -eq (==) , -gt ( >) , -ge ( >= ) , -lt (<) , -le ( <=)

if [ $var1 -gt $var2 ];then
   echo "var1 is greater $var1 "
elif [ $var1 -eq $var2 ];then
   echo "var1 equal to var2"
else
    echo "var2 is greater $var2"
fi

