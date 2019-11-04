#!/bin/bash
echo '[Start] Server starting..';
screen -S mcs java -Xms1G -Xmx3G -d64 -jar server.jar nogui
echo '[Start] Server started..';
