# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Copy the Maven wrapper and the Maven project files
COPY .mvn/ .mvn
COPY mvnw pom.xml ./

# Make the Maven wrapper executable
RUN chmod +x ./mvnw

# Download the project dependencies
RUN ./mvnw dependency:go-offline

# Copy the project source code
COPY src ./src

# Package the application
RUN ./mvnw clean package

# Expose the port the application runs on
EXPOSE 5000

# Run the application
CMD ["java", "-jar", "target/Backend-0.0.1-SNAPSHOT.jar"]
