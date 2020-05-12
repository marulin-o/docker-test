FROM centos:7
MAINTAINER Marulin Oleg "marulin_o@mail.ru"
RUN yum -y update
RUN yum install -y epel-release
RUN yum install -y nginx
RUN echo 'Hi, I am in your container' \
        >/usr/share/nginx/html/index.html
EXPOSE 80 