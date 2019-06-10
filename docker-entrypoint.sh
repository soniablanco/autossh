#!/bin/sh
set -e


#
mkdir /root/.ssh
chmod 600 /root/.ssh
cat > /root/.ssh/config <<-ConfigHD
Host    *
		UserKnownHostsFile        /dev/null
		StrictHostKeyChecking     no
		TCPKeepAlive              no
		ServerAliveInterval       5
		ServerAliveCountMax       3
ConfigHD
chmod 600 /root/.ssh/config
mv /secrets/id_rsa /root/.ssh
chmod 600 /root/.ssh/ir_rsa


exec  autossh $@ -N