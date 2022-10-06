FROM ubuntu:20.04
RUN apt update
RUN apt install maven -y
RUN apt install default-jdk -y
RUN apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
EXPOSE 8080
CMD ["mvn package -f boxfuse-*/"]
