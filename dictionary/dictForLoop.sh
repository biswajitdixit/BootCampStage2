#! /bin/bash -x

declare -A student
student['name']='Raju'
student['id']=1290
student['stream']='IT'


for key in ${!student[@]}

do
      echo "$key:${student[$key]}"

done
