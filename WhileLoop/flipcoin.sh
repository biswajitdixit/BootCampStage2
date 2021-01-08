#!/bin/bash

target_count=11
minimum_difference=2
heads_count=0
tails_count=0
flips_count=0
while(( 1 ))
do
toss=$(( RANDOM % 2  ))
if(( toss == 0 ))
then
echo "Heads"
(( heads_count++ ))

else
echo "Tails"
(( tails_count++ ))

fi
diff=$(( heads_count - tails_count ))
if(( $heads_count == $target_count && $diff >= $minimum_difference ))
then
        echo "Heads won by $diff"
        break
elif(( $tails_count == $target_count && $diff >= $minimum_difference ))
then
         echo "Tails won by ${diff} points"
         break
fi

done
echo "The Heads count is $heads_count "
echo " Tails Count is $tails_count"
