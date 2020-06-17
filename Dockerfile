FROM tomcat:9.0.24
COPY ./app/target/app.war /usr/local/tomcat/webapps/app.war
COPY ./fonts ~/.fonts
#WORKDIR /usr/src/pekkouk
EXPOSE 8080
#CMD ["java", "-jar", "app.war"]
ENTRYPOINT [ "sh", "-c", "java -jar /usr/local/tomcat/webapps/app.war" ]