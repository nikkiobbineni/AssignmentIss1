#!/bin/bash
read s
rs=`echo $s | rev`
echo "String in reverse order : $rs"
echo -n "Incremented string : "
increment=$(echo "$rs" | tr  "0-9a-zA-Z" "1-9a-zA-ZA")
echo $increment
l=${#s}
for (( p=((((l/2))-1)); p>=0; p--));
do
   hrs=$hrs${s:$p:1} 
done
#echo "Half Reversed String : $hrs"
for (( p=((((l/2)))); p<l; p++));
do
   hrs=$hrs${s:$p:1} 
done
echo "Half Reversed String : $hrs"

