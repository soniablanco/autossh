FROM balenalib/raspberrypi3-debian
RUN [ "cross-build-start" ]



RUN apt-get update && \
apt-get install -yqq --no-install-recommends autossh && rm -rf /var/lib/apt/lists/*



RUN [ "cross-build-end" ]  




ENTRYPOINT ["autossh"]
