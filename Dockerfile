FROM openjdk:11-jre-slim

# Language
ENV LC_ALL=C.UTF-8

# timezone
ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Set the working directory
WORKDIR /app

# Copy the JAR file to the working directory
COPY ./target/employee-management-backend-0.0.1-SNAPSHOT.jar .

# Command to run the application
CMD ["java", "-jar", "employee-management-backend-0.0.1-SNAPSHOT.jar"]
