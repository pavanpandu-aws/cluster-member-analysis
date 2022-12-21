FROM tomcat:latest
LABEL maintainer="pavan kumar"
RUN apt-get update -y && apt-get install vim -y
ADD ./target/gemfire-analysis-capture-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
