#!/bin/sh

echo "Enter the string."
read string
echo "1) Calculate the Length of String"
echo "2) Locate position of a characterin a String"
echo "3) Extract first three characters from string"
echo "4) Extract last three characters from string"
echo "Enter your choice" 
read choice

case $choice in 
    1)
    if [ -z "$string" ]
    then
        echo "null String"
    else 
        z=`expr "$string" : '.*'`
        echo "String length is $z"
    fi;;

    2) 
    if [ -z "$string" ]
    then
        echo "null String"
    else 
        echo "Position of which letter?"
        read l
        z=`expr "$string" : "[^$l]*$l"`
        echo "Character is in $z th position."
    fi;;

    3) 
    z=`expr "$string" : '.*'`
        if [ $z -ge 6 ]
        then 
            echo "first 3 characters"
            z=`expr "$string" : '\(...\).*'`
            echo "$z"
        else
            echo "Invalid String > 6"

        
    fi;;
    4) 
    z=`expr "$string" : '.*'`

        if [ $z -ge 6 ]
        then 
            echo "last 3 characters"
            x=`expr "$string" : '.*\(...\)'`
            echo "$x"
        else
            echo "Invalid String > 6"

        
    fi;;
    *)echo "invalid choice";;
    esac