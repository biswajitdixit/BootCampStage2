#! /bin/bash -x

#ARRAY definition


#INDIRECT Declaration of Array
studentName[0]='Ashwini'
studentName[1]='Nikita'
studentName[2]='Biswajit'
studentName[3]='Bhushan'

# Explicit Declaration of array

declare -a studentStream


# Compound Assignment

studentStream=('CS' 'IT' 'EXTC' 'MECH') # studentStream=([0]='CS' [1]='IT')

# To print all elements / values of array

echo ${studentName[@]}

echo ${studentName[*]}

echo ${studentName[@]:0}

# To print an index element

echo ${studentStream[1]}

echo ${studentStream[3]}

# Delete a element at particular indexes

unset studentStream[0]

unset studentStream[2]
# print all element
echo ${studentStream[@]}
#delete all element
unset studentName
#printing all element
echo ${studentName[@]}
