#!/bin/sh

if [ $# -ne 1 ]
then 
    echo "no arguments "
    exit
fi
cdir=`pwd`
for dir in `echo $1 | tr '/' ' '`
do 
    if [ -d $dir ]
    then
        echo "$dir exists under `pwd`"
        cd $dir
    else
        mkdir $dir
        echo "$dir created under `pwd` "
        cd $dir
    fi
    done
    cd $cdir
ss