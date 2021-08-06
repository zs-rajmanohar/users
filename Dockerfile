FROM        openjdk:8-jre-slim
RUN         apt-get update -y && apt-get install maven -y
RUN         mkdir /app
COPY        . /app
WORKDIR     /app
RUN         mvn clean package
WORKDIR     /target
CMD         ["java", "-jar", "users-api-0.0.1.jar"]

