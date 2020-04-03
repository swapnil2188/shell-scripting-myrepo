#!/bin/bash

# Write a bash script to print all valid phone numbers.
# You may assume that a valid phone number must appear in one of the following two formats:
# (xxx) xxx-xxxx
# xxx-xxx-xxxx

echo "Printing the valid Phone number in Format (xxx) xxx-xxxx OR xxx-xxx-xxxx";
echo "Regex used with Extended Regex flag as -P (--perl-regexp) is deprecated for macOS";
echo " grep -E ^(\d{3}-|\(\d{3}\) )\d{3}-\d{4}$ "

grep -E '^(\d{3}-|\(\d{3}\) )\d{3}-\d{4}$' "$1";
