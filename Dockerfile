FROM ubuntu:14.10

MAINTAINER Yan Feng <t34@qq.com>


RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y inotify-tools openssh-server python2.7 python-pycurl python-pip
RUN pip install --upgrade pip
RUN pip install tornado
RUN mkdir -p /var/www

WORKDIR /var/www
EXPOSE 80
ENTRYPOINT ["python"]
