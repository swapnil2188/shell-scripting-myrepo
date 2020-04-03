#/etc/bin
if [ $# -ne 2 ]; then
  echo "Usage: $0 -<c|m> <ServerName>"
  echo "        -c = Check if server is up, returns 0 for up, 1 EFE down, 2 for application error."
  echo "        -m = Get server down message"
  exit 2
fi

if [ $1 = '-c' ]; then

        ssh -q $2 "pgrep -u jboss" > psTemp.out
        if [ -s psTemp.out ]; then
                status=0;
        else
                status=1;
        fi
        rm -f psTemp.out
        exit $status

else

        echo EFE application server $2 is down.

fi