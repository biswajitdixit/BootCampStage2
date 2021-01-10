#!  /bin/bash -x



coinToss=$((RANDOM%2))

if [ $coinToss -eq 1 ]

then
        echo ”Head”
else
        echo “Tail”
fi
