FROM openjdk:14-jdk-buster

RUN apt-get update \
    && apt-get -yqq full-upgrade \
    && apt-get -yqq install maven \
    && apt-get -yqq autoclean \
    && apt-get -yqq clean

COPY java /java
COPY anime4k.sh /usr/bin/anime4k
RUN cd /java \
    && ./build.sh \
    && chmod +x /usr/bin/anime4k
ENTRYPOINT [ "anime4k", "/in", "/out" ]