FROM        maven:3-openjdk-8
RUN         mkdir /app
COPY        . /app
WORKDIR     /app
RUN         mvn clean package
WORKDIR     /app/target
ENV         SERVER_PORT=8080
CMD         ["java", "-Xmx2048m", "-jar", "users-api-0.0.1.jar"]

