# Start with a base image containing Java runtime
FROM openjdk:8
# Add Maintainer Info
LABEL maintainer="github.com/ravi1singh"
# Make port 8080 available to the world outside this container
EXPOSE 8080
# Add the application's jar to the container
ADD /target/calc-1.0-SNAPSHOT.jar calc-1.0-SNAPSHOT.jar
# Run the jar file
ENTRYPOINT ["java","-cp","calc-1.0-SNAPSHOT.jar","com.Calc"]
