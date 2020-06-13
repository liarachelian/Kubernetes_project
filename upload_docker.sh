#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=microservice-project

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
export DOCKER_ID_USER=liarachelian
sudo docker login
sudo docker tag microservice-project

# Step 3:
sudo docker push $DOCKER_ID_USER/microservice-project