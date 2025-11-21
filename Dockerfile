FROM eclipse-temurin:17-jdk

WORKDIR /app
COPY . /app

RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests

EXPOSE 8761
ENTRYPOINT ["java", "-jar", "target/Eureka-Service-0.0.1-SNAPSHOT.jar"]

