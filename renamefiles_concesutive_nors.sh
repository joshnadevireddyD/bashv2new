#!/bin/bash
i=1
for file in *.jpg
do
        j=$( printf "%04d" "$i" )
        mv "$file" "$j.jpg"
        (( i++ ))
done
