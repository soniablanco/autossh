#!/bin/sh
set -e


mkdir /root/.ssh
chmod 600 /root/.ssh
cp /secrets/config /root/.ssh/config
chmod 600 /root/.ssh/config
cp /secrets/id_rsa /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa

exec  autossh $@ -N