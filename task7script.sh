#!/bin/bash
CC=gcc
EXEC=task7
SRC=task7-1.c
if [ "$SRC" -nt "$EXEC" ]
then
        echo "Rebuilding $EXEC..."
        $CC $SRC -o $EXEC
fi
./$EXEC
RET=$?

if [ $RET -eq 0 ]
then
    echo "Test passed"
elif [ $RET -eq 1 ]
then
	echo  "Wrong output"
fi
