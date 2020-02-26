FROM centos:latest
MAINTAINER Raghavendra 
RUN yum -y install httpd
COPY index.html /var/www/html/
EXPOSE 80
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
