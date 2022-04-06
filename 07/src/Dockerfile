FROM debian:stable-slim
RUN apt-get install maven -y
RUN apt-get install git -y
WORKDIR "/opt/app/"
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN cd boxfuse-sample-java-war-hello
RUN mvn package