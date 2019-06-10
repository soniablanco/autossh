FROM alpine:3.5

RUN apk update && \
    apk add autossh && \
    rm -r /var/cache/



COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh





ENTRYPOINT ["/docker-entrypoint.sh"]
