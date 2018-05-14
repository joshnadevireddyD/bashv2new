#!/bin/bash
echo "str"; read str
if [ $str ]
then
echo "not empty"
else
echo "empty"
fi
