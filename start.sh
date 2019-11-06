#!/bin/bash
echo '[Start] Launching server with logger'
screen -dm -S mcs bash -c 'java -Xms1G -Xmx3G -d64 -jar server.jar nogui > /dev/ttyS0'
echo '[Start] Server and logger launched successfully'