#!/bin/sh

echo "Enter the Choice."
echo "1) Copy a File"
echo "2) Remove a File"
echo "3) Move a File"
read choice

case $choice in 
    1)
    echo "Enter file name"
    read f1
    echo "Enter New file name"
    read f2
    cp $f1 $f2;;

    2) 
    echo "Enter file name"
    read f1
    rm -i $f1;;

    3) 
    echo "Enter file name"
    read f1
    echo "destination folder"
    read f2
    mv $f1 $f2;;
    *)echo "invalid choice";;
    esac