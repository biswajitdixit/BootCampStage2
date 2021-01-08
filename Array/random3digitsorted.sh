#! /bin/bash

function generateRandomNumber() {

randomNumber=$((RANDOM%899+100))

echo $randomNumber


}

function sortTheArray() {
randomNumbers=("$@")





for (( counterOne = 0; counterOne < ${#randomNumbers[@]}; counterOne++ ))
do
	for (( counterTwo = $counterOne; counterTwo < ${#randomNumbers[@]}; counterTwo++ ))
	do
		if [ ${randomNumbers[$counterOne]} -gt ${randomNumbers[$counterTwo]}  ]; then
			temp=${randomNumbers[$counterOne]}
			randomNumbers[$counterOne]=${randomNumbers[$counterTwo]}
			randomNumbers[$counterTwo]=$temp
		fi
	done
done
echo "Sorted array is " ${randomNumbers[@]}
echo "Second Largest number is ${randomNumbers[ $(( ${#randomNumbers[@]}-2 )) ]}"
echo "Second Smallest number is ${randomNumbers[1]}"
}


function storeRandomNumber() {

counter=0

while [ $counter -lt 10 ]
do
	randomNumberArray[((counter++))]=$(generateRandomNumber)
done

echo ${randomNumberArray[@]}

sortTheArray ${randomNumberArray[@]}
}

storeRandomNumber
