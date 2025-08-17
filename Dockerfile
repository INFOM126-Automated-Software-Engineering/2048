# Use official OpenJDK image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install Maven if not present
RUN apt-get update && apt-get install -y maven

# Build the project
RUN mvn clean package -DskipTests

# Run the application
CMD ["java", "-jar", "target/2048-1.0-SNAPSHOT.jar"]
