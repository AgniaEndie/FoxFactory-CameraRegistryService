FROM gradle:jdk21-alpine as build
LABEL authors="agniaendie"

WORKDIR /tmp
COPY . /tmp

RUN gradle build

FROM eclipse-temurin:21 as production
COPY --from=build /tmp/build/libs/CameraRegistryService-0.0.1-SNAPSHOT.jar .
ENTRYPOINT ["java", "-Xms256M","-Xmx312M" ,"-jar","CameraRegistryService-0.0.1-SNAPSHOT.jar"]