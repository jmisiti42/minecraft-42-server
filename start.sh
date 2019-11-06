#!/bin/bash
echo '[Start] Server starting..';
screen -d -m -S mcs java -Xms1G -Xmx3G -d64 -jar server.jar nogui
echo '[Start] Server launched successfully'

echo '[Start] Sleeping - awaiting latest.log creation // TODO find a better way'
sleep 5
echo '[Start] Sleeping over'

echo '[Start] Enabling logging'
chmod 666 /dev/ttyS0
screen -dm -S logs bash -c 'tail -f logs/latest.log > /dev/ttyS0'
echo '[Start] Logger enabled'
echo '[Start] Server started..';
