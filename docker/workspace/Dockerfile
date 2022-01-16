FROM golang:1.16.5-alpine

ENV GOPATH=/go \
    GO111MODULE=on

RUN set -x && \
    apk add --no-cache git gcc musl-dev tzdata bash curl redis mysql-client && \
    curl -L https://github.com/golang-migrate/migrate/releases/download/v4.14.1/migrate.linux-amd64.tar.gz | tar xvz -C /usr/bin

    RUN mv /usr/bin/migrate.linux-amd64 /usr/bin/migrate
    RUN rm -rf /tmp/*

WORKDIR /workspace
