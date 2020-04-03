#!/bin/bash

num=5
if [ $num -lt 0 ]; then
    echo "number is negative";
elif [ $num -lt 10 ]; then
    echo "number is less than 10";
else
    echo "number is equal or greater than 10";
fi
