#!/bin/bash

# Write a bash script to print all the lines of the input which are in the given range.
# The first line of the input contains two integers l and r separated by space.
# You have to print all the lines of the file input which are in the range of [l, r].

#Input
# 10 15
# Line 2 ..... 
# Line 15

# Output
# Line 10
# Line 11
# ..
# ..
# Line 15

l=`cat input | head -1 | cut -d' ' -f 1`;
r=`cat input | head -1 | cut -d' ' -f 2`; 

cat input | head -n $r | tail -n $((r-l+1)); 
