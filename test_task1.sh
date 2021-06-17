#!/bin/bash

CC=gcc
EXEC=task1
SRC=task1.c
if [ "$SRC" -nt "$EXEC" ]
then
        echo "Rebuilding $EXEC..."
        $CC $SRC -o $EXEC
fi
./$EXEC $*
RET=$?

if [ $RET -eq 0 ]
then
    echo "Test passed"
elif [ $RET -eq 1 ]
then
	echo  "Sum is not correct !Please check again!"
elif [ $RET -eq 2 ]
then
	echo "At least two arguments are needed"
elif [ $RET -eq 3 ]
then
	echo "This input is a character,float or special symbol"
fi
