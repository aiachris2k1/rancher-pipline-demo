FROM harbor.beststudy.net/tomcat/tomcat8jdk8:v1
MAINTAINER Chris aiachris2k1@163.com
COPY index.html /usr/local/tomcat/webapps/ROOT/.
COPY testc.war /usr/local/tomcat/webapps/.
EXPOSE 8080
CMD ["catalina.sh", "run"]