#!/bin/bash
echo '[Stop] Stopping every java server(s)..'
for l in $(ps aux | grep "java" | grep -v "grep" | tr -s ' ' '-' | cut -d'-' -f 2)
do
  kill $l
done
echo '[Shop] Java server(s) stopped..'
echo '[Stop] Stopping every tail commands'
for l in $(ps aux | grep "tail" | grep -v "grep" | tr -s ' ' '-' | cut -d'-' -f 2)
do
  kill $l
done
echo '[Shop] Tail commands stopped..'
