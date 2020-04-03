#!/bin/bash

if [ $# -eq 0 ]				####  $# Stores the number of command-line arguments that were passed to the shell program.
then
    echo "USAGE: ./login.sh prod/qa";
    echo "Select QA or PROD and Enter the password";
exit 1;
fi

if [ "$1" == "prod" ];
then
	/usr/local/bin/app --url https://app-master.something.com --user ss login;
exit 1
elif [ "$1" == "qa" ];
then
	/usr/local/bin/app --url https://app-qa-master.something.com --user ss login;
fi
