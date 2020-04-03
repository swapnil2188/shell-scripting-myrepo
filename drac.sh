#!/bin/bash

sshpass -p 'calvin' ssh root@1.2.3.4
racadm get idrac.tuning.DefaultCredentialWarning Disabled
racadm get BIOS.BiosBootSettings.BootMode Uefi
racadm get BIOS.BiosBootSettings.BootSeqRetry Disabled
#racadm config -g cfgServerInfo -o cfgServerBootOnce 1
#racadm config -g cfgServerInfo -o cfgServerFirstBootDevice PXE
racadm serveraction hardreset


#racadm serveraction powercycle
#sshpass -p 'calvin' ssh root@1.2.3.4 racadm get BIOS.BiosBootSettings.BootMode > bootmode.out
#grep ^BootMode bootmode.out | grep Bios

#if [ `echo "$rc"` = 0 ]
#then 
#echo "Boot Mode is Bios"
#else
#racadm set BIOS.BiosBootSettings.BootMode Bios
#fi 

#sshpass -p 'calvin' ssh root@1.2.3.4 racadm get BIOS.BiosBootSettings.BootSeqRetry > bootseqretry.out
#grep ^BootSeqRetry bootseqretry.out | grep Disabled

#if [ `echo "$rc"` = 0 ]
#then 
#echo "Bios Boot Settings is Disabled"
#else
#racadm set BIOS.BiosBootSettings.BootSeqRetry Disabled
#fi
