#!/bin/sh
# EULA automatisch akzeptieren
[ "$EULA" = "TRUE" ] && [ ! -f eula.txt ] && echo "eula=true" > eula.txt

# ---- Neu: Server in den Offline-Modus schalten --------------------------
# Falls Zeile schon existiert → ersetzen, sonst anhängen
grep -q '^online-mode=' server.properties \
  && sed -i 's/^online-mode=.*/online-mode=false/' server.properties \
  || echo 'online-mode=false' >> server.properties
# ------------------------------------------------------------------------

# Server starten
java -Xmx1024M -Xms1024M -jar /app/server.jar nogui
