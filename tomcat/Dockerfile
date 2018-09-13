FROM centos
MAINTAINER wangjian

ADD ./sources/jdk-7u80-linux-x64.rpm /usr/java/
ADD ./sources/apache-tomcat-7.0.73.tar.gz /developer/
ADD ./sources/apache-maven-3.0.5-bin.tar.gz /developer/
COPY ./conf/server.xml /developer/apache-tomcat-7.0.73/conf/server.xml

RUN chmod 777 /usr/java/jdk-7u80-linux-x64.rpm \
    && rpm -ivh /usr/java/jdk-7u80-linux-x64.rpm \
    && yum install -y git

ENV JAVA_HOME /usr/java/jdk1.7.0_80
ENV CATALINA_HOME /developer/apache-tomcat-7.0.73
ENV MAVEN_HOME /developer/apache-maven-3.0.5
ENV PATH $JAVA_HOME/bin:$CATALINA_HOME/bin:$MAVEN_HOME/bin:$PATH

ENTRYPOINT ["/developer/apache-tomcat-7.0.73/bin/catalina.sh", "run"]
EXPOSE 8080