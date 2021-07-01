#!/bin/bash
CC=gcc
EXEC=task7
SRC=task7.c
if [ "$SRC" -nt "$EXEC" ]
then
        echo "Rebuilding $EXEC..."
        $CC $SRC -o $EXEC
fi
input="./test_cases_keywords.txt"
COUNTER=1
check_output () {
    if [ "$READ" -ne "0" ]
    then
        echo "Test $COUNTER"
        if [ "$READ" -eq "1" ]
        then
            echo  "Test $COUNTER failed, argument was $line exit status: $READ .Wrong input.We need a string argument."
        elif [ "$READ" -eq "2" ]
        then
            echo  "Test $COUNTER passed, argument was $line exit status: $READ .This string is C keyword ."
        elif [ "$READ" -eq "3" ]
        then
            echo  "Test $COUNTER failed, argument was $line exit status: $READ .This input is a number."
        else [ "$READ" -eq "4" ]
            echo  "Test $COUNTER failed, argument was $line exit status: $READ .This input is not valid C keyword."
        fi
    else 
        echo  "Test $COUNTER failed, argument was $line exit status: $READ .This input is not valid C keyword."
    fi
}
while IFS= read -r line
    do
        ./$EXEC $line
        READ=$?
        check_output $COUTER
        (( COUNTER++ ))
    done < "$input"