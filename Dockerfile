FROM centos:latest

LABEL maintainer="gh3@gh3tech.com"

ENV TZ="America/Sao_Paulo"

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN yum -y install httpd

WORKDIR /var/www/html/

COPY . /var/www/html/

CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]

EXPOSE 80
