# Use official OpenJDK 17 slim image as base
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy the executable jar built by Maven into the container
COPY target/spring-petclinic-3.5.0-SNAPSHOT.jar app.jar


# Expose the port your app runs on (default 8080)
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
