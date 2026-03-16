FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY target/java-app.jar java-app.jar
CMD ["java","-jar","java-app.jar"]
EXPOSE 8080

