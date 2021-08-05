FROM        maven:3-openjdk-8 as BUILD
RUN         mvn package

FROM        openjdk:8-jre-slim
CMD         ["java", "-Xmx2048m", "-jar", "users-api-0.0.1.jar"]

