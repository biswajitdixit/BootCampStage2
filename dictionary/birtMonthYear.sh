#!/bin/bash 

declare -A same_month

select_month=$(( 1+($RANDOM%11+1) ))

case $select_month in
	1)
	month="January"
	;;
	2)
	month="February"
	;;
	3)
	month="March"
	;;
	4)
	month="April"
	;;
	5)
	month="May"
	;;
	6)
	month="June"
	;;
	7)
	month="July"
	;;
	8)
	month="August"
	;;
	9)
	month="September"
	;;
	10)
	month="October"
	;;
	11)
	month="November"
	;;
	12)
	month="December"
	;;
esac
echo "Individuals having birthdays on $month are: "
j=0
for (( i=1;i<=50;i++ ))
do

	birth_month=$(( 1+($RANDOM%11+1) ))

	if (( $birth_month==$select_month ))
	then
		count=1
		while (( $count!=0 ))
		do
			same_month[$j]="Individual $i "
			j=$(( $j+1 ))
			count=0
		done
	fi
done
echo ${same_month[@]}

