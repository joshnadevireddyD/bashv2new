#!/bin/sh
func()
{
	echo "We are in function now"
	echo $0  # shell script name
	echo $1  # first parameter
	echo $2  # second parameter
	echo "We leave function..."
	exit 0
}
func  123  "abc"
