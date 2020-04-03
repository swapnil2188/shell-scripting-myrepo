#!/bin/bash

# Script by Swapnil_Shevate<swapnil2188@gmail.com>
# This Script Outputs Slow requests per IP address
# "USAGE: ./script3.sh"

if [ -f out.txt ]
then
        echo "Using script2.sh output as input for script.sh"
else
        echo "Please run script2.sh before running script3.sh"
    exit 1
fi

if [ -f out.txt ]
then
        echo "                                                            "
        echo "------------------------------------------------------------------------------"
        echo "------------ Slow Requests above 3 seconds by Source IP Address -----------"
        echo "------------------------------------------------------------------------------"
        echo -en '\n'
        echo "Count Request_Time  IP_Address"
        cat out.txt | awk '{ print $1 "\t" $2 }' | sort | uniq -c | awk '{if ($2>3) print $1 "\t" $2 "\t" $3}'
        echo -en '\n'
fi
