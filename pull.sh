#!/bin/bash
echo '[Pull] Pulling repository'
GIT_SSH_COMMAND="ssh -i ./sshpub" git pull
echo '[Pull] Repository pulled'