#!/bin/sh

echo "Enter the number."
read number
n=`expr $number % 2`
if [ $n -eq 0 ]
then 
echo "Number is Even"
else
echo "Number is Odd"
fi