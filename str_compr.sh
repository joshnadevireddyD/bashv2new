#!/bin/bash
echo "str"; read str
if [ $str = "abc" ]
then echo "got it"
else 
echo "not 'abc' "
fi
