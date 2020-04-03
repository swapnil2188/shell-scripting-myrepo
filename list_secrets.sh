#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "USAGE: ./list_secrets.sh prod/qa secret_keyname";
    echo "Select QA or PROD Environment";
exit 1;
fi

if [ "$1" == "prod" ];
then
	/usr/local/bin/something --url https://something-master.something.com --user ss list secrets | grep -i "$2";
elif [ "$1" == "qa" ];
then
	/usr/local/bin/something --url https://something-master.something.com --user ss list secrets | grep -i "$2";
fi
