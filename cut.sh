#!/bin/bash

echo "Get 1 to 5 Columns";

cat data.csv | cut -c 1-5;

echo "Set Delimiter \",\" and get the First Field";

cat data.csv | cut -d ',' -f 1;
