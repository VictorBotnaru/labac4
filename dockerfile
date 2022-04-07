FROM openjdk:8
ADD target/v1ktor.jar.original v1ktor.jar.original
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "v1ktor.jar"]
