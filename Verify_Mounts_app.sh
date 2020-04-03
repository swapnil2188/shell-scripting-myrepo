#!/bin/bash

if [ $# -eq 0 ]; then
        echo "Usage:$0 <Server 1> <Server 2> ..." 
        echo "Requires EFE_fstab_efe_check.sh and EFE_df-h_efe_check.sh"
        exit 0;
fi

VALIDATION_HOME=/export/home/deploy/validation
VALIDATION_BIN=$VALIDATION_HOME/bin
MISSING_MOUNT_LOG=$VALIDATION_HOME/log/efeMounts.log

> $MISSING_MOUNT_LOG
for server in $@
do
        $VALIDATION_BIN/EFE_fstab_efe_check.sh -c $server
        if [ $? -eq 1 ]; then
                $VALIDATION_BIN/EFE_fstab_efe_check.sh -m $server >> $MISSING_MOUNT_LOG
        else
                $VALIDATION_BIN/EFE_df-h_efe_check.sh -c $server
                if [ $? -eq 1 ]; then
                        $VALIDATION_BIN/EFE_df-h_efe_check.sh -m $server >> $MISSING_MOUNT_LOG
                fi
        fi
done
