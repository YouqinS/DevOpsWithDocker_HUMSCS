FROM openjdk:8u171-jdk-alpine

EXPOSE 8080

WORKDIR /usr/src/app


# Copy all of the content from the project to the image
COPY ./material-applications/spring-example-project/ .

RUN chmod a+x  /usr/src/app/mvnw
RUN /usr/src/app/mvnw package

CMD ["java", "-jar", "/usr/src/app/target/docker-example-1.1.3.jar"]
