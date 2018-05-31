FROM harbor.beststudy.net/tomcat/tomcat8jdk8:0.3
MAINTAINER linliangyu <linliangyu@zy.com>
# now add java and tomcat support in the container
#ADD Shanghai /etc/localtime
#RUN echo "Asia/shanghai" >> /etc/timezone
RUN rm -rf /usr/local/tomcat/webapps/ROOT/*
ADD index.html /usr/local/tomcat/webapps/ROOT/
EXPOSE 8080
# startup web application services by self
CMD ["catalina.sh", "run"]