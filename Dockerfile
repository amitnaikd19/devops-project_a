FROM amazonlinux
MAINTAINER amitnaikd19@gmail.com
RUN yum install -y httpd zip unzip
COPY `/var/www/html/
WORKDIR /var/www/html
RUN unzip dgital.zip
RUN cp -rvf digital-agency-html-template/* .
RUN rm -rf digital-agency-html-template dgital.zip
CMD ["/usr/sbin/httpd,"-DFOREGROUND"]
EXPOSE 80

