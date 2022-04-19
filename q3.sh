#!/bin/bash
file=$1
let x=$(stat -c%s "$file")
echo "Size of file is $x bytes"
y=$(wc -l <$1)
echo "Number of lines in the file is $y"
z=$(wc -w <$1)
echo "Number of words in the file is $z"
let a=1;
while
read e;
do
echo -n "Line No: <$a> - Count of Words:"
echo -n $e|wc -w
((a=a+1))
done <$1
awk '{for(p = 1; p <= NF; p=p+1) {arr[$p]++}} END {for(j in arr) if(arr[j] >= 2)  {print "Word :" j ,"- Count of repetition :"  arr[j] }}' $1