#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=ezeasorekene/alxproject:4.1_final

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run flask-app --image=ezeasorekene/alxproject:4.1_final --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
sleep 100
kubectl port-forward flask-app 8000:80
