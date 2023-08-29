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
    '/')
    if [ $b -eq 0 ]
    then
        echo "Division by 0"
    else
    res=`expr $a / $b`
    echo "division=$res"
    fi;;
    *)echo "invalid choice";;
    esac

    