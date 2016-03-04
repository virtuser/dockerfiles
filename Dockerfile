FROM centos:latest

RUN yum -y update && yum install -y httpd

RUN echo '<html><body><h1>WELCOME TO DOCKER CI/CD DEMO 040416</h1></body></html>' > /var/www/html/index.html

EXPOSE 80 443

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
