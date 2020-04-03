#!/bin/bash

echo starting Apache on All CG WS

# don't use -t

webCgServers=$(cat /export/home/deploy/validation/server_list/webCgservers)

for server in $webCgServers
do
        ssh $server "hostname;sudo /etc/init.d/httpd2 start &" 2>&1

done
