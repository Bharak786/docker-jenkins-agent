FROM opcycle/openjdk:11

LABEL maintainer="OpCycle <oss@opcycle.net>"
LABEL repository="https://github.com/opcycle/docker-jenkins-agent"

ENV JENKINS_USER="jenkins" \
    JENKINS_UID="8983" \
    JENKINS_GROUP="jenkins" \
    JENKINS_GID="8983"

RUN groupadd -r --gid "$JENKINS_GID" "$JENKINS_GROUP"
RUN useradd -r --uid "$JENKINS_UID" --gid "$JENKINS_GID" "$JENKINS_USER"

RUN dnf -y install dnf-plugins-core \
    && dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo \
    && dnf -y install openssh docker-ce docker-ce-cli git maven nodejs java-11-openjdk-devel \
    && dnf clean all

