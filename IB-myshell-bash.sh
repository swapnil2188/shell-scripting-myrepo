#!/bin/bash

wc_output=`wc /Users/swapnilshevate/iTunes/shell_scripts/testfile | tr -s ' '` # You can save output of a command in a variable
bytes=`echo $wc_output | cut -d ' ' -f 1` # You can then use variable to extract more useful information
lines=`echo $wc_output | cut -d ' ' -f 2`
words=`echo $wc_output | cut -d ' ' -f 3`
filename=`echo $wc_output | cut -d ' ' -f 4`

echo "Filename: $filename"
echo "Bytes in the file: $bytes"
echo "Lines in the file: $lines"
echo "Words in the file: $words"
