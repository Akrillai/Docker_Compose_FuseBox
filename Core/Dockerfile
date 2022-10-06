FROM tomcat:8.5.35
WORKDIR /app
COPY . /app
RUN mv /app/*.war /opt/Tomcat1/webapps/
ENV PATH $PATH:/opt/Tomcat1/bin
WORKDIR /opt/Tomcat1/bin
EXPOSE 8080
CMD ["catalina.sh", "run"]