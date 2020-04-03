#!/bin/bash

echo "Match all words starting with Ind";
grep "Ind*" words;

echo "Match all words ending with age";
grep "age$" words;
#grep ".*age$" words; - Both Work can use this .*
 
echo "Match all pattern NOT WORD which starts with q and doesn’t follow by u";
grep "q" words | grep -v "qu" 

echo "Get information about all ethernet interfaces using -A (after) flag";
ifconfig | grep "en[0-9]" -A 4
