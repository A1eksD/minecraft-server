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
Here you can set the listening port, choose the log level, define the maximum number of simultaneous connections, and adjust any other available options.