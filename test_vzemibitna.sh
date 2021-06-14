#!/bin/bash
CC=gcc
EXEC=vzemibitna
SRC=vzemibitna.c
if [ "$SRC" -nt "$EXEC" ]
then
        echo "Rebuilding $EXEC..."
        $CC $SRC -o $EXEC
fi
./$EXEC $1 $2
RET=$?

if [ $RET -eq 0 ]
then
    echo "Test passed"
elif [ $RET -eq 1 ]
then
	echo  "Position must be a positive number"
elif [ $RET -eq 2 ]
then
	echo "Two arguments needed"
elif [ $RET -eq 3 ]
then
	echo "This input is a character,float num or special symbol"
fi
