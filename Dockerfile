# Use a supported OpenJDK 17 runtime (Eclipse Temurin)
FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

# Copy the already-built fat JAR (make sure this file exists locally)
COPY target/helloworld-1.0-SNAPSHOT-jar-with-dependencies.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
