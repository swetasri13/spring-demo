FROM openjdk:8
WORKDIR .
RUN mvn clean install
EXPOSE 8080
ADD target/app.jar app.jar
ENTRYPOINT [ "java","-jar","app.jar"]
