#!/bin/bash

echo "Replacing or removing specific characters from the input";
echo "Reverse the case using TR command, small -> CAPS and CAPS -> small";
cat words | tr '[a-z][A-Z]' '[A-Z][a-z]';

echo "Replace i with x";
cat words | tr 'i|I' 'X';

echo "Remove all i's using \"-d\" FLAG ";
cat words | tr -d 'i|I';
