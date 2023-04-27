#!/bin/bash

# Get the image name as a parameter
IMAGE_NAME=$1

# Pull the image
docker pull dockerproxy.com/$IMAGE_NAME

# Tag the image with the new name
docker tag dockerproxy.com/$IMAGE_NAME $IMAGE_NAME

# Remove the original image
docker rmi dockerproxy.com/$IMAGE_NAME
