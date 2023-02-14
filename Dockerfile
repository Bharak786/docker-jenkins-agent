ARG JAVA_VERSION

FROM openjdk:${JAVA_VERSION}
    
RUN apk update \
    && apk add --no-cache curl net-tools telnet
