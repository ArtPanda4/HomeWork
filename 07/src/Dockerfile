FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update
RUN apt-get install git -y
RUN apt-get install apt-utils -y
RUN apt install default-jdk -y
RUN apt-get install maven -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN cp ./boxfuse-sample-java-war-hello /opt
WORKDIR "/opt"
RUN mvn package