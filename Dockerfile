FROM harisekhon/hadoop:latest
MAINTAINER Dennis Pfisterer (https://github.com/pfisterer/)

RUN curl http://apache.mirror.anlx.net/pig/latest/pig-0.17.0.tar.gz | tar -zx -C /usr/local
ENV PATH /usr/local/pig-0.17.0/bin:$PATH

RUN curl http://ftp-stud.hs-esslingen.de/pub/Mirrors/ftp.apache.org/dist/hive/hive-1.2.2/apache-hive-1.2.2-bin.tar.gz | tar -zx -C /usr/local
ENV PATH /usr/local/apache-hive-1.2.2-bin/bin:$PATH

EXPOSE 10020
EXPOSE 50070
EXPOSE 50030
EXPOSE 8088
