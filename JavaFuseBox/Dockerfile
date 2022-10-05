FROM ubuntu:20.04
RUN apt update
RUN apt install maven -y
RUN apt install default-jdk -y
RUN apt install git -y
RUN apt install wget -y

RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.67/bin/apache-tomcat-9.0.67.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.67.tar.gz
RUN mv apache-tomcat-9.0.67/* /opt/tomcat

RUN mkdir /opt/docker_project
WORKDIR /opt/docker_project
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git

WORKDIR /opt/docker_project/boxfuse-sample-java-war-hello
RUN rm src/main/webapp/boxfuse.png
RUN cd src/main/webapp/ && wget https://www.docker.com/wp-content/uploads/2022/05/Docker_Temporary_Image_Google_Blue_1080x1080_v1.png
RUN cd src/main/webapp/ && mv Docker_Temporary_Image_Google_Blue_1080x1080_v1.png boxfuse.png
RUN mvn package
RUN cp target/hello-1.0.war /opt/tomcat/webapps/
# EXPOSE 5000
CMD ["/opt/tomcat/bin/catalina.sh", "run"]