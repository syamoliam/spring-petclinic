FROM centos:centos7.9.2009

RUN yum install java -y

RUN mkdir /opt/tomcat

WORKDIR /opt/tomcat

ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.68/bin/apache-tomcat-9.0.68.tar.gz .

RUN tar -xzf apache-tomcat-9.0.68.tar.gz

COPY target/spring-petclinic-2.7.3.jar /usr/local/tomcat/webapps/ROOT.jar

EXPOSE 8085 

CMD ["catalina.sh", "run"]
