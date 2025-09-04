# EULA automatisch akzeptieren
[ "$EULA" = "TRUE" ] && [ ! -f eula.txt ] && echo "eula=true" > eula.txt

# Offline-Modus erzwingen (für checked version - nur zur Vorführung)
grep -q '^online-mode=' server.properties \
  && sed -i 's/^online-mode=.*/online-mode=false/' server.properties \
  || echo 'online-mode=false' >> server.properties