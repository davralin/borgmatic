FROM debian:bullseye-slim
LABEL MAINTAINER davralin

RUN \
  /usr/bin/apt-get -y update && \
  /usr/bin/apt-get -y install --no-install-recommends \
    borgmatic \
    borg \
    && \
    /bin/rm -rf /var/lib/apt/lists/*
