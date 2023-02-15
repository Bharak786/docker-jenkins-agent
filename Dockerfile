FROM debian AS java8
RUN apt-get update && apt-get install -y openjdk-8

FROM alpine AS java11
RUN apk add openjdk11

FROM some-base-image
COPY --from=java8 /usr/lib/jvm/java-8-openjdk-amd64/ /usr/lib/jvm/java-8-openjdk-amd64/
COPY --from=java11 /usr/lib/jvm/java-11-openjdk/ /usr/lib/jvm/java-11-openjdk/

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk/
