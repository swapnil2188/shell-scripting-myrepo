#!/bin/bash

echo "A pipe is a form of redirection that is used in Linux and other Unix-like operating systems to send the output of one program to another program for further processing";

echo "Output (generated from for i in {1..30}; do echo $i; done ) which will be taken as input by cut :"

for i in {1..30}; do echo $i; done | cut -c 2 | sort | uniq
