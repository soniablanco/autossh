FROM alpine:3.6

RUN    echo "@community http://dl-4.alpinelinux.org/alpine/v3.6/community/" >> /etc/apk/repositories \
	&& apk add --update autossh@community \
	&& rm -rf /var/lib/apt/lists/*

ENV \
	AUTOSSH_LOGFILE=/dev/stdout \
	AUTOSSH_GATETIME=30         \
	AUTOSSH_POLL=10             \
	AUTOSSH_FIRST_POLL=30                
	# AUTOSSH_DEBUG=1             \
	# AUTOSSH_LOGLEVEL=1          \

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh





ENTRYPOINT ["/docker-entrypoint.sh"]
