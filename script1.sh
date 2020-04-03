#!/bin/bash

# Script by Swapnil_Shevate<swapnil2188@gmail.com>
# This Script Counts the Total number of requests per Second or  MIN
# Note - This Script is only valid for 24 hour Cycle - Need some modifications to consider anything after 24 hours
# "USAGE: ./script1.sh httpd.log min/sec"

if [ $# -eq 0 ]
  then
    echo "USAGE: ./script1.sh httpd.log min/sec"
    exit 1
fi

echo -en '\n'
echo "Note - This Script is only valid for 24 hour Cycle - Need some modifications to consider anything after 24 hours"
echo -en '\n'
if [ $2 = sec ]
then
        echo "                                                            "
        echo "-----------------------------------------------------------------"
        echo "Total number of Requests per second "
        echo "-----------------------------------------------------------------"
        echo -en '\n'
        echo "  Count Timestamp"
        grep "HTTP/1.1\"" $1 | cut -f2 -d"[" | cut -f1 -d"]" | awk '{print $1 }' | uniq -c
        echo -en '\n'
elif [ $2 = min ]
then
        echo "                                                            "
        echo "-----------------------------------------------------------------"
        echo "Total number of requests per minute"
        echo "-----------------------------------------------------------------"
        echo -en '\n'
        echo "  Count Timestamp"
        grep "HTTP/1.1\"" $1 | cut -f2 -d"[" | cut -f1 -d"]" | sed s/:/\\t/3 | awk '{ print $1 }' | sed s/:/:/1 | uniq -c
        echo -en '\n'
fi
