# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory (build output) into the container
COPY target/*.jar app.jar

# Expose the default port Spring Boot runs on
EXPOSE 8080

# Run the application using the JAR file
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
