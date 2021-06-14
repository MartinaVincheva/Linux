#!/bin/bash

for file in *.dat

do
	mv -- "$file" "${file%.dat}.succes"
done

for file in *.fin

do 
	rm $file
done
