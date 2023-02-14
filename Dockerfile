ARG JAVA_VERSION

FROM openjdk:${JAVA_VERSION}
    
RUN apt-get update \
    && apt-get install -y curl \
    && apt-get install -y net-tools \
    && apt-get install -y telnet
