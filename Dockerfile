FROM openjdk:8-jdk-alpine
ARG JAR_FILE=build/libs/ecs_fargate_deploy_example-DEMO.jar
COPY ${JAR_FILE} demoApplication.jar
ENV TZ Asia/Seoul
ENTRYPOINT ["java","-jar","demoApplication.jar"]