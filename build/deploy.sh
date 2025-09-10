#!/bin/bash
set -e

CONTAINER_NAME="devops-app-container"

echo "🚀 Deploying application..."
docker stop $CONTAINER_NAME 2>/dev/null || true
docker rm $CONTAINER_NAME 2>/dev/null || true

docker run -d --name $CONTAINER_NAME -p 80:80 devops-app:latest

echo "✅ Application deployed on http://localhost"
