# Stage 1: Build jar
FROM maven:3.9.6-eclipse-temurin-21 AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Run app
FROM openjdk:21
WORKDIR /app
COPY --from=builder /app/target/*.jar api-service.jar
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "api-service.jar"]
