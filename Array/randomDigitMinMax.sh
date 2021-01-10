#! /bin/bash

function generateRandomNumber() {

randomNumber=$((RANDOM%899+100))

echo $randomNumber


}

function SecondLargest() {
randomNumbers=("$@")

largestNumber=${randomNumbers[0]}
secondLargestNumber=${randomNumbers[0]}
smallestNumber=${randomNumbers[0]}
secondSmallestNumber=${randomNumbers[0]}


for ((counter=1; counter < ${#randomNumbers[@]} ; counter++))
do
	if [ $largestNumber -lt ${randomNumbers[$counter]} ]
	then
		secondLargestNumber=$largestNumber
		largestNumber=${randomNumbers[$counter]}
	elif [ $secondLargestNumber -lt  ${randomNumbers[$counter]} ]
	then
		 secondLargestNumber=${randomNumbers[$counter]}

	fi
	if [ $smallestNumber -gt ${randomNumbers[$counter]} ]
        then
                secondSmallestNumber=$smallestNumber
                smallestNumber=${randomNumbers[$counter]}
        elif [ $secondSmallestNumber -gt  ${randomNumbers[$counter]} ]
        then
                 secondSmallestNumber=${randomNumbers[$counter]}

        fi

done

echo "Second Largest number is $secondLargestNumber"
echo "Second Smallest number is $secondSmallestNumber"
}



function storeRandomNumber() {

counter=0

while [ $counter -lt 10 ]
do
	randomNumberArray[((counter++))]=$(generateRandomNumber)
done

echo ${randomNumberArray[@]}

SecondLargest ${randomNumberArray[@]}
}

storeRandomNumber
