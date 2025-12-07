# Use a slim OpenJDK 17 runtime
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy the already-built fat JAR (make sure this file exists locally)
COPY target/helloworld-1.0-SNAPSHOT-jar-with-dependencies.jar app.jar

# Optional: expose the port the app listens on (update number if different)
EXPOSE 8080

# Use exec form; keeps PID 1 behavior correct
ENTRYPOINT ["java", "-jar", "app.jar"]
