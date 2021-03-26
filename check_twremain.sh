#! /bin/sh
#
#wasuaje@hotmail.com
# 30/08/2012
#
#  This Nagios plugin was created to check Twits count available
#

PROGNAME=`basename $0`
PROGPATH=`echo $0 | sed -e 's,[\\/][^\\/][^\\/]*$,,'`
REVISION="1.0"

STATE_OK=0
STATE_WARNING=1
STATE_CRITICAL=2
STATE_UNKNOWN=3
STATE_DEPENDENT=4

if [ $1 -lt 26 ] ; then
        echo "CRITICAL - Quedan menos de 25 twits"
        exit $STATE_CRITICAL
fi

if [ $1 -gt 24 ] && [ $1 -lt 100 ] ; then
        echo "WARNING - Se estan agotando los twits"
        exit $STATE_WARNING
fi		
		
if [ $1 -gt 100 ] ; then
        echo "OK - Quedan mas de 100 twits"
        exit $STATE_OK
fi		
	
