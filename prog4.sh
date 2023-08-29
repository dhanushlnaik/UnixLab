#!/bin/sh

echo "Options are: \n1) Add\n2) Subtract\n3) Divide\n4) Multiply"
echo "Enter two Numbers : "
read a 
read b
echo "Enter the Operation: "
read op

case $op in
    '+' res=`expr $a+$b`
    echo "sum=$y";;
    '-' res=`expr $a-$b`
    echo "sum=$y";;
    '*' res=`expr $a\*$b`
    echo "sum=$y";;
    '/' res=`expr $a/$b`
    echo "sum=$y";;