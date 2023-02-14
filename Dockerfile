ARG JAVA_VERSION

FROM openjdk:${JAVA_VERSION}
    
RUN apk add --no-cache net-tools
    
