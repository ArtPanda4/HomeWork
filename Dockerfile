FROM  bitnami/git:latest as git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello

FROM maven:3.6.1-slim AS build
RUN mkdir /opt/app 
COPY --from=git /boxfuse-sample-java-war-hello/  /opt/app
WORKDIR "/opt/app/"
RUN mvn package

FROM tomcat:latest 
COPY --from=build /opt/app/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps/ 
EXPOSE 8080  
CMD ["catalina.sh", "run"]