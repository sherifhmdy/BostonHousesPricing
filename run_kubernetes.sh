#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=sherifhmdy/bostonapp:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run bostonapp \
	--image=$dockerpath \
	--port=5000 --labels app=bostonapp

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward bostonapp 5000:5000
