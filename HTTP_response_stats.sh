#!/bin/bash

# Script by Swapnil_Shevate<swapnil2188@gmail.com>
# This Script Counts the Total number of Occurrences for each HTTP response code type
# It also counts the total number of Occurrences per Second for any one Specific HTTP response code when passed as argument to the script
# "USAGE: ./HTTP_response_stats.sh httpd.log 301"

if [ $# -eq 0 ]
  then
    echo "USAGE: ./HTTP_response_stats.sh httpd.log 301"
    exit 1
fi

echo "------------------------------------------------------------"
echo "Total number of occurrences for each HTTP response code type"
echo "------------------------------------------------------------"
echo -en '\n'
echo "  Count HTTP_Error_Code"

grep -o "HTTP/1.1\" [0-9][0-9][0-9]" $1 | sort | uniq -c

echo "                                                            "
echo "-----------------------------------------------------------------"
echo "Total number of occurrences per second for HTTP response code $2"
echo "-----------------------------------------------------------------"
echo -en '\n'
echo "  Count Timestamp"

grep "HTTP/1.1\" $2" $1 | cut -f2 -d"[" | cut -f1 -d"]" | awk '{print $1 }' | uniq -c

echo -en '\n'
