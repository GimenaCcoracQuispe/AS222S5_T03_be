FROM openjdk:17-jdk-alpine

WORKDIR /app

EXPOSE 8080

ENV DATABASE_URL=${DATABASE_URL} \
    API_KEY=${API_KEY}
    
ADD ./target/traductor-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
