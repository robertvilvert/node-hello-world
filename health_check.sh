#!/usr/bin/env bash

ps | grep -w -o node
X=$?
code=$(timeout 15 curl -s -o /dev/null --max-time 5 --connect-timeout 8 -w "%{http_code}\n" http://127.0.0.1:3000)

if [ $X -gt 0 ] || [ $code -ne 200 ] 
then
  exit 1
else
  exit 0
fi
