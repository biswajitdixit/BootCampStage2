#! /bin/bash -x

# Dictionary Definition
declare -A student # Creating an associative array

# Assign values to Associative array

student["nane"]="Raju"

student["roll_no"]=30

student["stream"]="cs"

student["id"]=23556

student["ph_number"]="8989898989"

# Print all element of an associative array/dictionary

echo ${student[@]}

# Print all keys of an associative array/dictionary

echo "Keys:${!student[@]}"

# Print specific key value

echo "name:${student['name']}"

echo "id:${student['id']}"

unset student['id']

echo ${!student[@]}
echo ${student[@]}
