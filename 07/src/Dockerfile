FROM maven:3.6.1-slim AS build
RUN mkdir /opt/app
RUN mkdir /opt/app/webapp
WORKDIR "/opt/app/"
RUN ls -ap
RUN mvn package
RUN cp ./target/* /opt/app/webapp