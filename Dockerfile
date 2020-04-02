FROM openjdk:11.0.6-jre-slim

MAINTAINER Artur Aukhatov <aaukhatov@gmail.com>

RUN apt-get update && apt-get install -y wget
RUN wget https://archive.apache.org/dist/activemq/5.15.9/apache-activemq-5.15.9-bin.tar.gz && \
    tar xzf apache-activemq-5.15.9-bin.tar.gz -C /opt

COPY activemq.xml /opt/apache-activemq-5.15.9/conf

WORKDIR /opt/apache-activemq-5.15.9
EXPOSE 8161 222 5672 61616
ENTRYPOINT [ "bin/activemq", "console" ]