FROM golang:1.21.4-alpine3.18

RUN apk update \
    && apk upgrade \
    && apk add git

# Install
RUN go get -u github.com/vente-privee/influxdb-relay \
    && mv /go/bin/influxdb-relay /usr/bin/influxdb-relay \
    &&chmod 755 /usr/bin/influxdb-relay

# Clean - can be removed in multistage
RUN rm -fr /go/src/github.com \
    && apk del git

ENTRYPOINT [ "/usr/bin/influxdb-relay" ]

CMD [ "-config", "/etc/relay.toml" ]
