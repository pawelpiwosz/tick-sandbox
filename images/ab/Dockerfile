ARG AB_TAG
FROM alpine:$AB_TAG

RUN apk --no-cache add --update apache2-utils

#FROM ubuntu:latest
#RUN apt-get update && apt-get install -y apache2-utils

COPY ./config/start.sh start.sh

CMD ["./start.sh"]
