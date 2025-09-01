# Minecraft-Server


## Table-of-Contents
* [Description](#description)  
* [Requirements](#requirements)
* [Quickstart](#quickstart)

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