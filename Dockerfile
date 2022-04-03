FROM ubuntu:20.04
LABEL "HOMEWORK from ARTEZ"
RUN apt-get update
RUN apt-get install maven -y
RUN apt-get install tomcat9 -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
WORKDIR "/boxfuse-sample-java-war-hello"
RUN mvn package
COPY target/hello-1.0.war /usr/share/tomcat
EXPOSE 8080
CMD ["catalina.sh", "run"]