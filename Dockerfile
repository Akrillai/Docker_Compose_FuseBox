FROM ubuntu:20.04
RUN apt update
RUN apt install maven -y
RUN apt install default-jdk -y
RUN apt install tomcat9 -y
RUN apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN rm boxfuse-sample-java-war-hello/src/main/webapp/boxfuse.png
RUN wget https://www.docker.com/wp-content/uploads/2022/05/Docker_Temporary_Image_Google_Blue_1080x1080_v1.png -P /boxfuse-sample-java-war-hello/src/main/webapp
RUN mv boxfuse-sample-java-war-hello/src/main/webapp/Docker_Temporary_Image_Google_Blue_1080x1080_v1.png boxfuse-sample-java-war-hello/src/main/webapp/boxfuse.png
RUN mvn package target/
RUN cp boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat9/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]