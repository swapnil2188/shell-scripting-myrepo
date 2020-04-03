#!/bin/bash

echo "Enter the String:"

read s

rvs=`echo $s | rev`

if [ $s == $rvs ]
then
	echo "Its a Palindrome"
else
	echo "Not a Palindrome"
fi
