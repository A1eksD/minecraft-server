# Minecraft-Server


## Table-of-Contents
* [Description](#description)  
* [Requirements](#requirements)
* [Quickstart](#quickstart)
* [Usage](#usage)

## Description

This repository provides a fully-containerised Minecraft Java server environment that can be launched on any Docker-capable host in a matter of minutes.

## Requirements

- Docker Compose
- server.jar

## Quickstart

1. **Clone repository**
    ```bash 
        git clone git@github.com:A1eksD/minecraft-server.git
        cd minecraft-server
    ```

1. **Build and run** : use Docker Compose to build and start the container.
    ```bash
        docker-compose up --build
    ```

## Usage

Open `server-properties.sh` to configure the server.
Here you can set the listening port:
```bash
    [ -n "$PORT" ] && {
    grep -q '^server-port=' server.properties \
        && sed -i "s/^server-port=.*/server-port=$PORT/" server.properties \
        || echo "server-port=$PORT" >> server.properties
    }
```
Choose the log level:
```bash
    [ -n "$LOG_LEVEL" ] && {
    grep -q '^debug=' server.properties \
        && sed -i "s/^debug=.*/debug=$DEBUG_FLAG/" server.properties \
        || echo "debug=$DEBUG_FLAG" >> server.properties
    }
```
Define the maximum number of simultaneous connections:
```bash
    [ -n "$MAX_PLAYERS" ] && {
    grep -q '^max-players=' server.properties \
        && sed -i "s/^max-players=.*/max-players=$MAX_PLAYERS/" server.properties \
        || echo "max-players=$MAX_PLAYERS" >> server.properties
    }
```
 
You can also check the [Minecraft Wiki](https://minecraft.wiki/w/Server.properties?utm_source=chatgpt.com) to see what else you can change.