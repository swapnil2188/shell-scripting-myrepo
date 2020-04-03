#!/bin/bash

#Write a bash script to replace all the occurrences of / with \ and \ with / in a text file named input

cat input-slash | sed 's/\\/\#/g' | sed 's/\//\\/g' | sed 's/\#/\//g'

cat input-slash | tr '/\\' '\\/'

