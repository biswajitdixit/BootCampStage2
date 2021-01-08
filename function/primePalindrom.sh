#! /bin/bash

echo “Enter numbers:”
read num

s=0
rev=""
temp=$num
divisible=0
function Is_Prime(){
for(( i=2 ;i <= `expr $num / 2`;i++))
do
if [ `expr $num % $i` -eq 0 ]
then
     divisible=1
fi
done
}

function Is_palindrom() {
while [ $num -gt 0 ]
do
        s=$(( $num % 10 ))
        num=$(( $num / 10 ))
        rev=$( echo ${rev}${s} )
done

}

Is_Prime
if [ $divisible -eq 0 ]
then
   echo "prime no"
    Is_palindrom
if [ $temp -eq $rev ];
then
        echo "$temp Number is prime palindrome "
else
        echo "$temp Number is prime NOT palindrome"
fi

else
     echo "$num is not prime no"

fi
