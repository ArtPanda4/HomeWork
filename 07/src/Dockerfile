FROM maven:3.6.1-slim AS build
RUN apt install git -y
WORKDIR "/opt/app/"
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN cd boxfuse-sample-java-war-hello
RUN mvn package