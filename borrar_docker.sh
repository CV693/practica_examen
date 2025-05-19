#!/bin/bash

# Detener y eliminar 20 contenedores
for i in $(seq 1 20); do
    echo "Deteniendo y borrando contenedor$i..."
    docker stop contenedor$i
    docker rm contenedor$i
done
