#!/bin/bash
set -x
echo "enter a num"
read num


case $num in
[0-9]) echo "unit";;
[10-99]*) echo "ten";;
[100-999]*) echo "hundred";;
[1000-10000]*) echo "thousand";;
*) echo "Wrong input"

esac
