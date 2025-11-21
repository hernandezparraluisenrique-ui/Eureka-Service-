FROM eclipse-temurin:17-jdk

# Copia el código fuente
COPY . /app
WORKDIR /app

# Construye el JAR
RUN ./mvnw clean package -DskipTests

# Usa el JAR generado
ENTRYPOINT ["java", "-jar", "target/Eureka-Service-0.0.1-SNAPSHOT.jar"]
EXPOSE 8761