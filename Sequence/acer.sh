#1 /bin/bash

set -x
area_in_SquareFeet=25
area_in_acer=`echo $area_in_SquareFeet 43560 | awk '{print $1/$2}' `
echo " $area_in_acer  acer"
