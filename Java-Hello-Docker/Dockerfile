FROM ubuntu:20.04
RUN apt update
RUN apt install maven -y
RUN apt install default-jdk -y
RUN apt install git -y
RUN apt install wget -y


RUN mkdir /opt/docker_project
WORKDIR /opt/docker_project
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /opt/docker_project/boxfuse-sample-java-war-hello
RUN rm src/main/webapp/boxfuse.png
RUN cd src/main/webapp/ && wget https://www.docker.com/wp-content/uploads/2022/05/Docker_Temporary_Image_Google_Blue_1080x1080_v1.png
RUN cd src/main/webapp/ && mv Docker_Temporary_Image_Google_Blue_1080x1080_v1.png boxfuse.png
RUN mvn package
EXPOSE 8080
CMD ["/usr/local/tomcat/tomcat/bin/catalina.sh", "run"]