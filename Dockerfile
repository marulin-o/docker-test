FROM centos:7
MAINTAINER Marulin Oleg "marulin_o@mail.ru"
RUN yum -y update
RUN yum install -y epel-release
RUN yum install -y nginx
ENV PATH=$PATH:/usr/local/bin/:/usr/local/sbin/:/usr/bin/:/usr/sbin/
RUN mkdir -p /var/cache/nginx/client_temp && mkdir -p /etc/nginx/conf.d
WORKDIR /usr/share/nginx/html
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
RUN echo 'i,am alive!' > /usr/share/nginx/html/index.html
EXPOSE 80 22 443
