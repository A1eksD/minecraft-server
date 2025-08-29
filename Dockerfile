FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

COPY JavaServer/server.jar ./server.jar

RUN chmod +x /app/conatiner-entrypoint.sh

EXPOSE 25565

ENTRYPOINT [ "/bin/sh", "-c", "/app/conatiner-entrypoint.sh" ]