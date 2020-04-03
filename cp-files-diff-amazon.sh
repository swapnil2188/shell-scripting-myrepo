#!/bin/bash

#Question - Copy files from dir2 to dir1 if they do not exist in dir1

ls /Users/swapnilshevate/iTunes/shell_scripts/dir1/ > file1;
ls /Users/swapnilshevate/iTunes/shell_scripts/dir2/ > file2;

val=`diff file1 file2`;

echo "$val" | grep '>' | awk '{ print $2 }' > file3;

cat file3;

for i in `cat file3`;do cp /Users/swapnilshevate/iTunes/shell_scripts/dir2/"$i" /Users/swapnilshevate/iTunes/shell_scripts/dir1/;echo "$i";done
