#!/bin/bash
#Subnet killer

echo "This IP is reportedly from:$(geoiplookup $1  | cut -d "," -f 2)!"
WHODAT=$(whois $1)
RANGE=$(echo "$WHODAT" | grep -i -e "netrange:" -e "inetnum:" | cut -d ':' -f 2 | tail -n1)
echo "Attempting to Black hole:$RANGE"!
KILZN=$(ipcalc $RANGE | tail -n 1)
echo "Last chance to hit Ctrl-C before I kill "$KILZN"?"
sleep 1s
echo "...3"
sleep 1s
echo "..2"
sleep 1s
echo ".1"
sleep 1s
route add -net $KILZN gw 127.0.0.1
echo "$KILZN null-routed."
