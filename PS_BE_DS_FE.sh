#!/bin/bash

echo Checking BE, DS and FE tier JBoss.

beServers=$(cat /export/home/deploy/validation/server_list/beservers)
dsServers=$(cat /export/home/deploy/validation/server_list/dsservers)
feApdServers=$(cat /export/home/deploy/validation/server_list/feApdservers)
feCgServers=$(cat /export/home/deploy/validation/server_list/feCgservers)
Servers="$beServers $dsServers $feApdServers $feCgServers"

for server in $Servers
do
        ssh $server "hostname;ps -ef | grep jboss"; echo "_____________________"
done
