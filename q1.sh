#!/bin/bash
sed '/^$/d' $1
echo
echo
echo
echo
echo
sort $1 >> out.txt
uniq out.txt 

