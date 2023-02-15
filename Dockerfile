ENV JAVA_VERSION 11
ENV NET_TOOLS netstat telnet curl

RUN apt-get update && \
    apt-get install -y $NET_TOOLS && \
    apt-get install -y openjdk-${JAVA_VERSION}-jdk
    
RUN update-alternatives --set java /usr/lib/jvm/java-${JAVA_VERSION}-openjdk-amd64/bin/java
