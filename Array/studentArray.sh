#! /bin/bash -x

counter=0
studentName[((counter++))]='Ashwini'
studentName[((counter++))]='Nikita'
studentName[((counter++))]='Biswajit'
studentName[((counter++))]='Bhushan'


echo "Print elements: ${studentName[@]}"

# To print count of an element

echo "Print indexes: ${#studentName[@]}"

for((i=0;i<${#studentName[@]};i++))
do
   echo ${studentName[$i]}
done
