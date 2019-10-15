FROM openjdk:14-jdk-buster

RUN apt-get update \
    && apt-get -y full-upgrade \
    && apt-get -y install maven

COPY java /java
RUN cd /java \
    && ./build.sh \
    && echo "#!/bin/bash\n\njava -jar /java/Anime4K.jar \$1 \$2" > /usr/bin/anime4k \
    && chmod +x /usr/bin/anime4k
ENTRYPOINT [ "anime4k", "/in", "/out" ]