FROM debian AS java8
RUN apt-get update && apt-get install -y openjdk-8-jdk

FROM alpine AS java11
RUN apk add openjdk11

FROM some-base-image
COPY --from=java8 /usr/local/java-8-openjdk-amd64/ /usr/local/java-8-openjdk-amd64/
COPY --from=java11 /usr/local/java-11-openjdk/ /usr/local/java-11-openjdk/
ENV JAVA_HOME=/usr/local/java-11-openjdk/
