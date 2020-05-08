# Start with a base image containing Java runtime
FROM openjdk:8
# Add Maintainer Info
LABEL maintainer="github.com/ravi1singh"
# Make port 8080 available to the world outside this container
EXPOSE 8080
# Add the application's jar to the container
ADD /target/calculator-1.0-SNAPSHOT.jar calculator-1.0-SNAPSHOT.jar
# Run the jar file
ENTRYPOINT ["java","-cp","calculator-1.0-SNAPSHOT.jar","com.calculator"]
