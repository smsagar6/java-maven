FROM eclipse-temurin:17

WORKDIR /app

COPY target/classes/App.class .

CMD ["java", "App"]
