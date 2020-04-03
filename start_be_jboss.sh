#!/bin/bash

for n in 01 02 03 04 05 06 07 08 09 10 27 28 29
do
	echo "_____________________"
	ssh -q something$n.data.net "hostname;ps -f -u jboss";
	if [ `echo $?` == 0 ]
	then
		ssh -q something$n.data.net "var=$(ps -f -u jboss | wc -l)";
		var1=`expr $var - 1`
		if [ $var1 == 2 ]
		then	
			echo " $var1 Instance of JBoss is running";
		else
			echo "$var1 Instances of JBoss are running";
		fi	
	else
		echo "Jboss is not running";		
	fi
done

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

