FROM ubuntu:16.04

# Install prerequisites
RUN apt-get -y update &amp;&amp; apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN apt-get -y install curl
RUN mkdir /usr/local/tomcat
RUN wget https://downloads.apache.org/tomcat/tomcat-10/v10.0.20/bin/apache-tomcat-10.0.20.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp &amp;&amp; tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-10.0.20/* /usr/local/tomcat/
EXPOSE 8080
# java
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# Define default command.
CMD ["bash"]


WORKDIR /usr/local/tomcat/webapps
RUN curl -O -L https://github.com/bhaskarndas/sample-war/raw/main/sampletest.war


CMD ["https://github.com/apache/tomcat/blob/main/bin/catalina.sh", "run"]







# FROM ubuntu:20.04
# RUN apt update
# RUN apt install maven -y
# RUN apt install default-jdk -y
# RUN apt install tomcat9 -y
# RUN apt install git -y

# # ENV CATALINA_HOME /usr/local/tomcat
# # ENV PATH $CATALINA_HOME/bin:$PATH
# # RUN mkdir -p "$CATALINA_HOME"
# # WORKDIR $CATALINA_HOME

# RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
# #RUN rm boxfuse-sample-java-war-hello/src/main/webapp/boxfuse.png
# #RUN apt install wget
# #RUN wget https://www.docker.com/wp-content/uploads/2022/05/Docker_Temporary_Image_Google_Blue_1080x1080_v1.png -P /boxfuse-sample-java-war-hello/src/main/webapp
# #RUN mv boxfuse-sample-java-war-hello/src/main/webapp/Docker_Temporary_Image_Google_Blue_1080x1080_v1.png boxfuse-sample-java-war-hello/src/main/webapp/boxfuse.png
# RUN cd boxfuse-sample-java-war-hello && mvn package
# RUN cd ~
# RUN cd boxfuse-sample-java-war-hello/target && cp hello-1.0.war /var/lib/tomcat9/webapps/
# EXPOSE 8080
# CMD ["/bin/catalina.sh", "run"]