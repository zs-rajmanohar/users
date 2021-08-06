FROM        maven:3-openjdk-8 as BUILD
RUN         mkdir /app
COPY        . /app
WORKDIR     /app
RUN         mvn clean package

FROM        openjdk:8-jre-slim
WORKDIR     /target
CMD         ["java", "-Xmx2048m", "-jar", "users-api-0.0.1.jar"]

