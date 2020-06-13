#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=liarachelian/microservice-project


# Step 2
# Run the Docker Hub container with kubernetes
kubectl run microservice-project --image=liarachelian/microservice-project --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
sleep 180
kubectl port-forward microservice-project 8000:80
