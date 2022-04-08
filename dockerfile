FROM openjdk:8 as build
COPY .mvn .mvn
COPY mvnw .
COPY src src

RUN ./mvn -B package

FROM openjdk:8

COPY --from=build target/v1ktor.jar .

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "v1ktor.jar"]
