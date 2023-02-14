FROM openjdk:11-jdk-slim
    
RUN apt-get update \
    && apt-get install -y curl \
    && apt-get install -y net-tools \
    && apt-get install -y telnet
