#!  /bin/bash

echo -e "please choose the \n1. Head \n2. Tail"

read choice

coinToss=$((RANDOM%2+1)) 

if [ $choice -eq $coinToss ]

then
        echo ”you won”
else
        echo “lost”
fi
