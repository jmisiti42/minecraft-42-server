#!/bin/bash
echo '[Stop] Stopping server..'
for l in $(ps aux | grep "java")
do
  kill $l
done
doneecho '[Shop] Server stopped..'
