FROM openjdk:10-jre-slim
COPY ./app/target/app.war /usr/src/pekkouk/
WORKDIR /usr/src/pekkouk
EXPOSE 8080
CMD ["java", "-jar", "app.war"]