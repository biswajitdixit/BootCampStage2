#! /bin/bash
set -x
echo "please enter input "
read input
function conversion_temp(){
echo "please enter conversionUnits"
read conversion
case $conversion in
     farenhite)
     echo "$celcius_to_farenhite   ";;
     celcius)
     echo "$farenhite_to_celcius   ";;
       * )
      echo "name error";;
esac
}
if [ $input -le 100 ];then
a=`echo $input 1.8 | awk '{print $1*$2}'`
celcius_to_farenhite="`echo $a 32 | awk '{print $1+$2}'`  degF"
else
celcius_to_farenhite="out of parameter"
fi
if [ $input -le 212 ] && [ $input -ge 32 ];then
b=`echo $input 32 | awk '{print $1-$2}'`
farenhite_to_celcius="`echo $b 0.56 | awk '{print $1*$2}'`  degC"
else
farenhite_to_celcius="out of parameter"
fi

result="$(conversion_temp )"






