FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

COPY JavaServer/server.jar ./server.jar

COPY container-entrypoint.sh ./entrypoint.sh
RUN chmod +x ./entrypoint.sh  

EXPOSE 25565

ENTRYPOINT [ "./entrypoint.sh" ]