#!/bin/bash
if [ $1 = "--backup" ]
then
  $PWD/backup.sh
fi
$PWD/stop.sh
$PWD/start.sh