#!/bin/bash
echo "str"; read str
case "$str" in
abc)echo "str= abc";;
xyz)echo "str=xyz";;
*)echo "not abc.xyz";;
esac
