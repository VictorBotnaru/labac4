FROM openjdk:8

COPY --from=build target/v1ktor.jar .

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "v1ktor.jar"]
