#! /bin/bash 

gambler_money=100
is_bet=1 
bet_times=0
bet_wons=0
bet_lose=0

while [ $gambler_money -gt 0 ] && [ $gambler_money -le 200 ] && [ $is_bet -eq 1 ]
do

	if [ $[RANDOM%2] -eq 0 ] 
	then
		bet_wons=$((bet_wons+1))
	else
		gambler_money=$((gambler_money-1))
		bet_lose=$((bet_lose+1))
	fi
		bet_times=$((bet_times+1))
done

echo " BetTimes:$bet_times"
echo " Won:$bet_wons"
