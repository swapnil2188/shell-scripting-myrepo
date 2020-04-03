#!/bin/bash

i=1;

while [ $i -le 5 ];
do
	echo "$i";
	i=$(($i+1));		#Increment While loop or will go forever
done
