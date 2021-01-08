#! /bin/bash


set -x
#define variable

var1=10

var2=11

if [ $var1 -gt $var2 ];then
   echo "var1 is greater $var1 "
else
    echo "var2 is greater $var2"
fi

