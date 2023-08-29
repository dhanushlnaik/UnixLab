#!/bin/sh

echo "Options are: \n1) Add\n2) Subtract\n3) Divide\n4) Multiply"
echo "Enter two Numbers : "
read a 
read b
echo "Enter the Operation: "
read op

case $op in
    '+')res=`expr $a + $b`
    echo "sum=$res";;
    '-')res=`expr $a - $b`
    echo "diff=$res";;
    '*')res=`expr $a \* $b`
    echo "product=$res";;
    '/')res=`expr $a / $b`
    echo "division=$res";;
    *)echo "invalid choice";;
    esac