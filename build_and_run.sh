#!/bin/bash

# Check if the .sif file already exists
if [ -f /apptainer/flask-app.sif ]; then
    echo "Using cached Apptainer image..."
else
    echo "Building Apptainer image from Docker image..."
    apptainer build /apptainer/flask-app.sif docker-daemon://flask-docker-app:latest
fi

# Run the Apptainer image
echo "Running Apptainer container..."
apptainer run /apptainer/flask-app.sif
