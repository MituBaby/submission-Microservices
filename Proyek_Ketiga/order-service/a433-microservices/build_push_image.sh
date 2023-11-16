#!/bin/bash

# Membangun Docker image
docker build -t ghcr.io/mitubaby/order-service:latest .

# Masuk ke GitHub Container Registry
echo $GHCR_TOKEN | docker login ghcr.io -u mitubaby --password-stdin

# Push image Docker ke GitHub Container Registry
docker push ghcr.io/mitubaby/order-service:latest
