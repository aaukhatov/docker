FROM centos:7

MAINTAINER Arthur Aukhatov <aaukhatov@gmail.com>

RUN yum install -y java-1.8.0-openjdk.x86_64

CMD ["java", "-version"]