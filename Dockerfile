FROM openjdk:8-alpine

ENV SBT_VERSION 1.3.7

# Install sbt
RUN apk add --no-cache bash && \
    apk add --no-cache --virtual=.dependencies tar wget && \
    wget -O- "https://github.com/sbt/sbt/releases/download/v$SBT_VERSION/sbt-$SBT_VERSION.tgz" \
    | tar xzf - -C /usr/local --strip-components=1 && \
    apk del --no-cache .dependencies
