#!/bin/bash

#Write a bash script that finds all the invalid email addresses.

grep -x "^[A-za-z][\.\+A-Za-z0-9]*[@][A-Za-z0-9]*[\.][A-Za-z]*" input-email
