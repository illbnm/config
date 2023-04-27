#!/bin/bash

# Get the image name as a parameter
IMAGE_NAME=$1

# Pull the image
docker pull dockerproxy.com/library/$IMAGE_NAME:latest

# Tag the image with the new name
docker tag dockerproxy.com/library/$IMAGE_NAME:latest $IMAGE_NAME:latest

# Remove the original image
docker rmi dockerproxy.com/library/$IMAGE_NAME:latest
