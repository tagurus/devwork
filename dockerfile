FROM tomcat:8.0
MAINTAINER Vasiliy Minin <tagurus@gmail.com>
RUN apt-get update
RUN apt-get -y install openjdk-7-jdk
RUN apt-get -y install maven
RUN apt-get -y install git
RUN apt-get -y install haveged
RUN git clone http://github.com/boxfuse/boxfuse-sample-java-war-hello.git /tmp/tomcat/
RUN cd /tmp/tomcat;mvn package
RUN mv /tmp/tomcat/target/hello-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
