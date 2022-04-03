FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install apt-utils -y
RUN apt-get install maven -y
RUN apt-get install tomcat9 -y
RUN ln -s /etc/tomcat9 /usr/share/tomcat9
RUN mkdir /usr/share/tomcat9/temp
RUN apt-get install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
WORKDIR "/boxfuse-sample-java-war-hello"
RUN mvn package
RUN cp target/hello-1.0.war /usr/share/tomcat
EXPOSE 8080
CMD /usr/share/tomcat9/bin/catalina.sh run