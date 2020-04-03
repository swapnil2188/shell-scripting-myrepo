#!/bin/bash

echo "Sorting by COLUMN 2 alphabetically ( Flag -k used to select a field for sorting)";

cat words.txt | sort -k '2'
