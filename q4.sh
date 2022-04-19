#!/bin/bash
#read values
IFS=','
read -a values
n="${#values[@]}"
for (( i = 0; i < $n; i++ ))
do
for (( j = 0; j < $n-$i-1; j++ ))
do
if [ ${values[$j]} -gt ${values[$((j+1))]} ];
then
t=${values[$j]}
values[$j]=${values[$((j+1))]}
values[$((j+1))]=$t
fi
done
done
echo -n ${values[0]}
for (( i=1; i <n;i++ ))
do
    echo -n ","
    echo -n ${values[$i]}
done

