#!/bin/bash

echo “Enter the string:”;
read s;

rev1=`echo $s | rev`;

if [ $s == $rev1 ]
then
	echo “It’s a Palindrome”;
else
	echo “Not an palindrome”;
fi
