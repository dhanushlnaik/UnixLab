#!/bin/sh


echo "Enter String"
read s
echo $s>temp
rvs="$(rev temp)"
if [ $s = $rvs ]
then 
echo "Yes its palindrome"
else
echo "No"
fi