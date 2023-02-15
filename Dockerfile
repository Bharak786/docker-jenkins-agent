FROM alpine:latest

RUN apk update && \
    apk add net-tools && \
    apk add telnet && \
    apk add curl
