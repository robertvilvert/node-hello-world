#!/usr/bin/env bash

ps | grep -w -o node
X=$?
netstat -tpnl | grep -w -o 3000
Y=$?

if [ $X -gt 0 ] || [ $y -gt 0 ] 
then
  exit 2
else
  exit 0
fi
