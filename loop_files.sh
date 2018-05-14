#!/bin/bash
PATH=/path/to/dir/
FILES=*.sql
for f in $PATH$FILES
do
echo $f
done
