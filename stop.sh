#!/bin/bash
echo '[Stop] Stopping server..'
for l in $(ps aux | grep "java" | grep -v "grep" | tr -s ' ' '-' | cut -d'-' -f 2)
do
  kill $l
done
echo '[Shop] Server stopped..'
