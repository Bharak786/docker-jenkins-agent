FROM alpine:3.14

RUN apk update \
    && apk add curl \
    && apk add net-tools \
    && apk add telnet
