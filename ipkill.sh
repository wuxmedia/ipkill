#!/bin/bash
#Subnet killer

read IP
echo "This IP is reportedly from:`geoiplookup $IP  | cut -d "," -f 2`!"
WHODAT=`whois $IP`
RANGE=`echo "$WHODAT" | grep inetnum: | cut -d ':' -f 2`
echo $RANGE
KILZN=`ipcalc $RANGE | tail -n 1`
echo "Last chance to hit Ctrl-C before I kill "$KILZN"?"
sleep 3s
route add -net $KILZN gw 127.0.0.1
echo "$KILZN null-routed."
