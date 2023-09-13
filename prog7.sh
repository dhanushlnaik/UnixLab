#!/bin/sh

echo "Enter the string."
read string
if [ -z "$string" ]
then
    echo "null String"
else 
    z=`expr "$string" : '.*'`
    echo "String length is $z"
fi

if [ $z -ge 6 ]
then 
    echo "first 3 characters"
    z=`expr "$string" : '\(...\).*'`
    echo "$z"
    echo "last 3 characters"
    x=`expr "$string" : '.*\(...\)'`
    echo "$x"
else
    echo "Invalid String > 6"

fi