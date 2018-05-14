#!/bin/sh
echo "string input=?"
read str
pos=`expr index $str a`
echo "position of the first 'a' = "$pos
