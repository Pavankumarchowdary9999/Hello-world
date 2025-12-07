# Use OpenJDK 17 base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy Maven build artifact (JAR) into container
COPY target/helloworld-1.0-SNAPSHOT-jar-with-dependencies.jar app.jar

# Run the JAR
ENTRYPOINT ["java","-jar","app.jar"]
