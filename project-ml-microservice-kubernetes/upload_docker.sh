#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=ezeasorekene/alxproject:4.1

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag ezeasorekene/alxproject:4.1 ezeasorekene/alxproject:4.1_final
docker login -u ezeasorekene -p $PSSWRD

# Step 3:
# Push image to a docker repository
docker push ezeasorekene/alxproject:4.1_final
