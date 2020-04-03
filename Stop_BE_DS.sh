#!/bin/bash
echo stopping BE and DS tier JBoss.

beServers=$(cat /export/home/deploy/validation/server_list/beservers)
dsServers=$(cat /export/home/deploy/validation/server_list/dsservers)
Servers="$beServers $dsServers"

for server in $Servers
do
        ssh $server "hostname;sudo /etc/init.d/jboss stop &" 2>&1
done