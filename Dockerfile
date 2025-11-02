FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn -B -q dependency:go-offline
COPY src ./src
RUN mvn -B -q clean package -DskipTests=false

FROM eclipse-temurin:17-jre
WORKDIR /app
ARG JAR_FILE=target/*.jar
COPY --from=build /app/${JAR_FILE} app.jar
EXPOSE 8080
LABEL org.opencontainers.image.title="EVA2DEVOPS" \
      org.opencontainers.image.source="https://github.com/<OWNER>/EVA2DEVOPS" \
      org.opencontainers.image.revision="${GIT_COMMIT_SHA}"
ENTRYPOINT ["java","-jar","/app/app.jar"]
