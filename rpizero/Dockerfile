FROM balenalib/raspberry-pi-debian
RUN [ "cross-build-start" ]



RUN apt-get update && \
apt-get install -yqq --no-install-recommends autossh && rm -rf /var/lib/apt/lists/*



COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh


RUN [ "cross-build-end" ]  





ENTRYPOINT ["/docker-entrypoint.sh"]
