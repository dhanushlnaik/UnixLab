#!/bin/sh

if [ $# -eq 0 ]
then
    echo "Enter the pattern : "
    read pat
    echo "Enter the filename : "
    read fn
else
    pat=$1
    fn=$2
fi
sh prog3.sh $pat $fn