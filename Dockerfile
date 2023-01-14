FROM centos:centos7.9.2009

RUN yum install java -y

RUN mkdir /opt/tomcat

WORKDIR /opt/tomcat

ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.71/bin/apache-tomcat-9.0.71.tar.gz .

RUN tar -xzf apache-tomcat-9.0.71.tar.gz

WORKDIR  /home/runner/work/spring-petclinic/spring-petclinic/target

COPY  /opt/tomcat/webapps/ROOT.jar spring-petclinic-2.7.3.jar

EXPOSE 8085 

CMD ["catalina.sh", "run"]
