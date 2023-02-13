FROM opcycle/openjdk:11

LABEL maintainer="OpCycle <oss@opcycle.net>"
LABEL repository="https://github.com/opcycle/docker-jenkins-agent"

RUN dnf -y install dnf-plugins-core \
    && dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo \
    && dnf -y install openssh docker-ce docker-ce-cli git maven ant nodejs java-11-openjdk-devel \
    && dnf clean all
    
RUN apt-get update \
  && apt-get install -y openjdk-11-jdk \
  && apt-get install -y curl \
  && apt-get install -y net-tools \
  && apt-get install -y telnet
