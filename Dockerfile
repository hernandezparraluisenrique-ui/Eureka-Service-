FROM eclipse-temurin:17-jdk

# Copia el JAR generado al contenedor
COPY target/Eureka-Service-0.0.1-SNAPSHOT.jar app.jar

# Expón el puerto de Eureka
EXPOSE 8761

# Comando para ejecutar el servidor
ENTRYPOINT ["java", "-jar", "/app.jar"]