#!/bin/bash

awk -F',' '{ print $1 "," $2 "," $3 "," $4 "," $6 "," "+"$5 "-" $7 }' "$1";
