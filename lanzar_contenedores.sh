#!/bin/bash

# Puerto inicial
PUERTO=8081

# Lanzar 20 contenedores
for i in $(seq 1 20); do
    echo "Lanzando contenedor$i en el puerto $PUERTO..."
    docker run -d --name contenedor$i -p $PUERTO:80 app-ubuntu
    PUERTO=$((PUERTO + 1))
done
