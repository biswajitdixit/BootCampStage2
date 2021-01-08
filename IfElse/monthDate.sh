#! /bin/bash

set -x

read -p " Enter Date:-" date
read -p " Enter Month:-" Month

if [ $Month -gt 3 ]&&[ $Month -lt 6 ]&&[ $date -lt 31 ]
then
        echo  "True";

elif [ $Month -eq 3 ]&&[ $date -ge 20 ]&&[ $date -lt 31 ]
then
        echo  "True";
elif [ $Month -eq 6 ]&&[ $date -le 20 ]
then
       echo "true"
else

        echo "False";
fi



