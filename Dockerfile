FROM opcycle/openjdk:11

LABEL maintainer="OpCycle <oss@opcycle.net>"
LABEL repository="https://github.com/opcycle/docker-jenkins-agent"

RUN dnf -y install dnf-plugins-core \
    && dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo \
    && dnf -y install docker-ce docker-ce-cli git maven nodejs \
    && dnf clean all

