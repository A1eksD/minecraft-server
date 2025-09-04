#!/bin/sh

# Extra settings laden
./server-properties.sh

# Server starten
java -Xmx1024M -Xms1024M -jar /app/server.jar nogui
