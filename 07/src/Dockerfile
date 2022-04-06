FROM maven:3.6.1-slim AS build
WORKDIR "/opt/app/"
RUN mvn package
RUN cp ./target /opt/app/webapp