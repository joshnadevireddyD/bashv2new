#!/bin/bash

arr=(aa bb cc dd ee ff gg)
echo ${arr[*]} 
echo ${arr[@]:0}   
echo ${arr[@]:1}  
echo ${arr[@]:2:3} 

for i in ${arr[*]}
do
	echo $i
done


