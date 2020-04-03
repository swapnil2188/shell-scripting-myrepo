#!/bin/bash

VALIDATION_HOME="/export/home/deploy/validation"
VALIDATION_BIN="$VALIDATION_HOME/bin"
VALIDATION_LOG="$VALIDATION_HOME/log"

ENV_PROBLEM_LOG="$VALIDATION_LOG/QDCProdEnvProblems.log"
DOWN_APPLICATION_LOG="$VALIDATION_LOG/downApplicationServers.log"
DOWN_WEB_SERVER_LOG="$VALIDATION_LOG/downWebServers.log"
DISK_FULL_LOG="$VALIDATION_LOG/diskFull.log"
TIBCO_DOWN_LOG="$VALIDATION_LOG/tibcoDownServers.log"
EFE_MOUNTS_LOG="$VALIDATION_LOG/efeMounts.log"
TIBCO_MOUNTS_LOG="$VALIDATION_LOG/tibcoMounts.log"

webServers=$(cat /export/home/deploy/validation/server_list/webservers)
beServers=$(cat /export/home/deploy/validation/server_list/beservers)
feApdServers=$(cat /export/home/deploy/validation/server_list/feApdservers)
feCgServers=$(cat /export/home/deploy/validation/server_list/feCgservers)
dsServers=$(cat /export/home/deploy/validation/server_list/dsservers)
#simServer=$(cat /export/home/deploy/validation/server_list/simservers)
beTibcoServer=$(cat /export/home/deploy/validation/server_list/beTibcoservers)
#cfpTibcoServer=$(cat /export/home/deploy/validation/server_list/cfpTibcoservers)

appServers="$beServers $feApdServers $feCgServers $dsServers"
##allServers="$webServers $appServers $simServer $beTibcoServer $cfpTibcoServer"
allServers="$webServers $appServers $beTibcoServer"

# Check disk space.
$VALIDATION_BIN/EFE_Verify_Server_Disk_Space.sh 90 $allServers
# Check for errors. 
$VALIDATION_BIN/checkLog.sh $DISK_FULL_LOG
# Merge errors into master log.
if [ $? -eq 1 ]; then
        cat $DISK_FULL_LOG >> $ENV_PROBLEM_LOG
fi