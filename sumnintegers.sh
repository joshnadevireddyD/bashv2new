#!/bin/bash
echo "nor"
read n
s=0
for((i=1; 1 <=n; i++))
do
let s=$s+$i
done
echo $s
