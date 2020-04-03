#!/bin/bash
SLEEP_TIME_OUT=45
echo starting All FE CG JBoss. Using sleep timeout: $SLEEP_TIME_OUT

# don't use -t

feCgServers=$(cat /export/home/deploy/validation/server_list/feCgservers)

for server in $feCgServers
do
        ssh $server "hostname;sudo /etc/init.d/jboss start &" 2>&1
        sleep $SLEEP_TIME_OUT
done