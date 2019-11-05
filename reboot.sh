#!/bin/bash
for i in "$@" ;
  do [[ $i == "--backup" ]] && $PWD/backup.sh && break ;
done;
$PWD/stop.sh
for i in "$@" ;
  do [[ $i == "--pull" ]] && $PWD/pull.sh && break ;
done;
$PWD/start.sh