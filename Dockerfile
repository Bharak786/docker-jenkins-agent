ARG JAVA_VERSION

FROM openjdk:${JAVA_VERSION}

RUN apk update \
    && apk add curl \
    && apk add net-tools \
    && apk add telnet
