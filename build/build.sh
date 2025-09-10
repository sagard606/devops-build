#!/bin/bash
set -e

IMAGE_NAME="devops-app"
TAG="latest"

echo "🔨 Building Docker image..."
docker build -t $IMAGE_NAME:$TAG .

echo "✅ Build complete: $IMAGE_NAME:$TAG"
