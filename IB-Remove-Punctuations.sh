#!/bin/bash

#Write a bash script that removes all the punctuations in the given file named input

echo "Check the Command Syntax inside";

cat input1 | tr -d "\,\.\'";

echo "FOR ALL Punctuations Refer Below";

cat input | tr -d '\!\@\#\$\%\^\&\*\(\)\_\-\+\=\{\}\[\]\;\:\"\`\/\>\?\.\,\<\~\|\\' | tr -d "'";

echo "FOR SMARTED INBUILD REGEX";

cat input | tr -d '[:punct:]';
