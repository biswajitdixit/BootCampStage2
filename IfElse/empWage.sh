#! /bin/bash

set -x

#Define constants

IS_PRESENT=1

#Define variable

empcheck=$((RANDOM%2))

if [ $IS_PRESENT -eq $empcheck ];then

     echo "employee is present"
else
      echo "employee is absent "
fi
