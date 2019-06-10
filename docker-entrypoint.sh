#!/bin/sh
set -e


#check if needed folders exist.



if [[ ! -d /root/.ssh ]]; then
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
fi
mv /secrets/id_rsa /root/.ssh
chmod 600 /root/.ssh/ir_rsa


exec  autossh $@ -N