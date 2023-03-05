FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y openjdk-17-jdk

WORKDIR /app
COPY ./build/libs/eureka-server-0.0.1-SNAPSHOT.jar /app

CMD ["java", "-jar", "eureka-server-0.0.1-SNAPSHOT.jar"]