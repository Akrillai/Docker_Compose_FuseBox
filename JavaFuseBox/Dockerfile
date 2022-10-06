FROM ubuntu:20.04
RUN apt update
RUN apt install maven -y
RUN apt install default-jdk -y
RUN apt install git -y
RUN apt install wget -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN mvn package -f boxfuse-*/
EXPOSE 8080
# RUN cp boxfuse-*/target/*.war /usr/local/tomcat/webapps/