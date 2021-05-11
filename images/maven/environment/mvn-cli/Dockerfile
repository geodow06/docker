# Build own base
FROM maven:3.6.3-openjdk-8

RUN wget http://dl-cdn.alpinelinux.org/alpine/latest-stable/main/x86_64/apk-tools-static-2.10.5-r1.apk      
RUN tar -zxvf apk-tools-static-2.10.5-r1.apk

WORKDIR sbin
RUN ./apk.static -X http://dl-cdn.alpinelinux.org/alpine/latest-stable/main -U --allow-untrusted --initdb add apk-tools-static
RUN apk.static update
RUN ./apk.static -X http://dl-cdn.alpinelinux.org/alpine/latest-stable/main -U --allow-untrusted add apk-tools
RUN apk update
RUN apk --no-cache add git

CMD ["/bin/bash"]