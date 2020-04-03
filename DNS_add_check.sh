#!/bin/bash
OUTPUT=$(grep "nameserver 1.2.3.4" /etc/resolv.conf)
if [[ $OUTPUT =~ "nameserver 1.2.3.4" ]]
then
        echo "DNS already there"
else
        echo "nameserver 1.2.3.4" >> /etc/resolv.conf
fi
