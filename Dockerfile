FROM ubuntu:20.04
RUN apt install maven -y
RUN apt install default-jdk -y
RUN apt install tomcat9 -y
RUN apt install git -y
RUN git clone git@github.com:boxfuse/boxfuse-sample-java-war-hello.git
RUN mvn package target/
RUN cp boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat9/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]