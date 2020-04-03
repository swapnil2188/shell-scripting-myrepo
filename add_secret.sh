#!/bin/bash

echo "WARNING - DONOT add a secret in PROD unless you add one in QA";
echo "Note - Secret_Value in QA and PROD should be different";
echo "First add secret to ITMS 8 then run second part of script to add same secret to ALL of QA(5,6,7,11)";

if [ $# -eq 0 ]
  then
	echo "USAGE: ./add_secret.sh qa/prod keyname value";
    	echo "Select QA or PROD, provide the secret_keyname and value";
exit 1;
fi

if [ "$1" == "qa" ];
then
	echo -n "$3" | 	/usr/local/bin/something --url https://something-qa-master.something.com --user ss add secret --name "$2" --group itms8;	
	echo -n "Add Secret to All other QA Environments(ITMS 5,6,7,11) (y/n)? "
        read answer
                if echo "$answer" | grep -iq "^y" ;then
                        /usr/local/bin/something --url https://something-qa-master.something.com --user ss assign secret --name "$2" --group itms5;
                        /usr/local/bin/something --url https://something-qa-master.something.com --user ss assign secret --name "$2" --group itms6;
                        /usr/local/bin/something --url https://something-qa-master.something.com --user ss assign secret --name "$2" --group itms7;
                        /usr/local/bin/something --url https://something-qa-master.something.com --user ss assign secret --name "$2" --group itms11;
                else
                        echo "Secret added Only in ITMS 8";
                fi
elif [ "$1" == "prod" ];
then
	echo -n "$3" | 	/usr/local/bin/something --url https://something-master.something.com --user ss add secret --name "$2" --group prod;
fi
