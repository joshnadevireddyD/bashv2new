#!/bin/bash

changedir()
{
DIR_NAME=$1
[ -d "$DIR_NAME" ] || 
{
echo Dir: $DIR_NAME does not exist 
exit 1
}
[ -r "$DIR_NAME" ] || 
{
echo Dir: $DIR_NAME not readable
exit 2
}
[ -x "$DIR_NAME" ] || 
{
echo Dir: cannot cd to $DIR_NAME
exit 3
}
[ -w "$DIR_NAME" ] || 
{
echo Dir: $DIR_NAME not writeable
exit 4
}
cd $DIR_NAME
echo "Present directory $DIR_NAME"
}
changedir /data/app/
