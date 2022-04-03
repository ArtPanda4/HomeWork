FROM ubuntu:20.04
Run apt-get update
RUN apt-get install maven -y
RUN apt-get install tomcat9 -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
WORKDIR "/boxfuse-sample-java-war-hello"
RUN mvn package
COPY target/hello-1.0.war /usr/share/tomcat
CMD ["catalina.sh", "run"]