#!/bin/bash
set -x
echo "enter a num"
read num


case $num in
[0-9]) echo "unit";;
[1-9][0-9]) echo "ten";;
[1-9][0-9][0-9]) echo "hundred";;
[1-9][0-9][0-9][0-9]) echo "thousand";;
*) echo "Wrong input"

esac
