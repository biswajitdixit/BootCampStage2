#!  /bin/bash



set -x

echo " enter a year "
read y

a=`expr $y % 4`
b=`expr $y % 100`
c=`expr $y % 400`

if [ $y -gt 999 ] && [ $y -le 10000 ] && [ $a -eq 0 ] && [ $b -ne 0 ] || [ $c -eq 0 ]


then
        echo "leap year"
else
        echo "no leap year"

fi
