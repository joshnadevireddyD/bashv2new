#!/bin/bash

perl -e 'print "$_\n" for (1..10);'
for ((i=1; i<=10; ++i)); do
echo $i
done
