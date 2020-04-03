#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "USAGE: ./list_secrets_groups.sh /qa secret_keyname";
    echo "Will list if a secret is in multiple groups";
exit 1;
fi

if [ "$1" == "qa" ];
then
	gozer --url https://something-master.something.com --user ss describe secret --name "$2" | head -30;
fi
