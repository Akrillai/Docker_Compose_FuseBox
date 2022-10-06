FROM ubuntu:20.04
RUN apt update
RUN apt install maven -y
RUN apt install git -y
WORKDIR /opt/docker_project
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN mvn package -f boxfuse-*/
