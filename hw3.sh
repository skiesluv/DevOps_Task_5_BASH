#!/bin/bash
sum=0
for (( i=1; i <= 100; i++ ))
do
sum=$(($sum + $i))
done
echo $sum

for (( j=0; j <= 100; j++))
do
if [[ $(expr $j % 3) == "0" ]]
then
        echo "$j"
fi
done