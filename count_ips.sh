#!/bin/bash

grep "Failed password for root" "$1" | awk '{ print $11 }' | sort | uniq -c;

