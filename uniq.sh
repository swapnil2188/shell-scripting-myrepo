#!/bin/bash

echo "Filter out repeated lines in a file";
cat nums.txt | uniq;

echo "Select unique lines along with their COUNT using -c (count) flag";
cat nums.txt | uniq -c;
