#!/bin/bash

# Script by Swapnil_Shevate<swapnil2188@gmail.com>
# This Script Counts the Total number of requests per IP address
# "USAGE: ./script2.sh httpd.log"

if [ $# -eq 0 ]
  then
    echo "USAGE: ./script2.sh httpd.log"
    exit 1
fi

        echo "                                                            "
        echo "------------------------------------------------------------------------------"
        echo "Total number of Requests by Source IP Address greater than 5 requests per IP"
        echo "------------------------------------------------------------------------------"
        echo -en '\n'
        echo "Count   IP_Address"
        grep "HTTP/1.1\"" $1 | awk '{ print $1 " " $3 }' > out.txt
        cat out.txt | awk '{ print $2 }' | sort | uniq -c | awk '{if ($1>5) print $1 "\t" $2}'
        echo -en '\n'
