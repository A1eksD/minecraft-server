#!/bin/sh
# EULA automatisch akzeptieren (optional)
[ "$EULA" = "TRUE" ] && [ ! -f eula.txt ] && echo "eula=true" > eula.txt

java -Xmx1024M -Xms1024M -jar /app/server.jar nogui
