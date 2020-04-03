#!/bin/bash

for n in 01 02 03 04 05 06 07 08 09 10 27 28 29
do
ssh -q something$n.data.net "hostname;ps -ef | grep jboss"; echo "_____________________"
done > out.txt

var=$(less -S out | grep -c "/usr/local/java/bin/java")

if [[ $var == 13 ]]
	echo "JBoss is running all Production systems"


SLEEP_TIME_OUT=90
echo starting BE JBoss. Using sleep timeout: $SLEEP_TIME_OUT
for n in 01 02 03 04 05 06
do
# don't use -t
ssh something$n.data.net "hostname;sudo /etc/init.d/jboss start &" 2>&1
sleep $SLEEP_TIME_OUT
done
