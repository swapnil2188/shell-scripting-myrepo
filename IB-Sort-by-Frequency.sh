#!/bin/bash

# In the given file named input, find the frequency of all the words and print as per the following format.
# The first column of each line of the output should be the frequency of the word followed by all the words of that 
# frequency arranged in lexicographical order separated with space “ ”

cat input-sort | tr ' ' '\n' | sort | sed '/^$/d' | uniq -c | sort -k 1;

# IDEAL SOLUTION BELOW
# cat input | tr -s ' ' '\n' | sort | uniq -c | sort | tr -s '[:space:]' | awk -F' ' '$1==last {printf " %s",$2; next} NR>1 {print "";} {last=$1; printf "%s",$0;} END{print "";}' | sed "s/^[ \t]*//"
