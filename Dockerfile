FROM centos:latest
MAINTAINER vivek24singhal@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free.css.com/assets/files/free-CSS-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markup.kindle/* .
RUN rm -rf _MACOSX markups.kindle kindle.zip
CMD ["/usr/sbin/httpd" , "-D" , "foreground" ]
expose 80
