#!/bin/bash
FIRST=$1
SECOND=$2

./areaecl $FIRST $SECOND

RET=$?

if [ $RET -eq 0 ]
then
    echo "Test passed"
elif [ $RET -eq 2 ]
then
	echo "Two arguments needed"
elif [ $RET -eq 3 ]
then
	echo "This input is a character,float num or special symbol"
fi
