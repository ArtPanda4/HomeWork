FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
ENV CATALINA_HOME=/usr/share/tomcat9
ENV CATALINA_BASE=/usr/share/tomcat9
ENV CATALINA_TMPDIR=/usr/share/tomcat9/temp
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install apt-utils -y
RUN apt install default-jdk -y
RUN apt-get install maven -y
RUN apt-get install tomcat9 -y
RUN apt-get install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN pwd
WORKDIR "/boxfuse-sample-java-war-hello"
RUN mvn package
#RUN ln -s /etc/tomcat9 /usr/share/tomcat9/conf
#RUN mkdir /usr/share/tomcat9/temp
RUN cp target/hello-1.0.war /var/lib/tomcat9/webapps
EXPOSE 8080
CMD /usr/share/tomcat9/bin/catalina.sh run