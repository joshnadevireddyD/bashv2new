#!/bin/sh

lst=*.txt

for i in $lst
do
	echo
	echo "======================================"
	echo "File "$i
	echo "======================================"
	cat <$i
done
