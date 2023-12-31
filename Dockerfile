FROM openjdk:11-jdk

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the host to the container
COPY target/eventsProject-1.0.0-SNAPSHOT.jar /app/eventsProject.jar

# Expose the port that your Spring Boot application listens on (change as needed)
EXPOSE 8089

# Command to run your Spring Boot application
CMD ["java", "-jar", "eventsProject.jar"]
