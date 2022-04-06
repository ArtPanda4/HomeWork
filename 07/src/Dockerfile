FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install git -y
RUN apt-get install apt-utils -y
RUN apt install default-jdk -y
RUN apt-get install maven -y
WORKDIR "/opt/app/"
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN cd boxfuse-sample-java-war-hello
RUN mvn package