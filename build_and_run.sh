#!/bin/bash

# Convert Docker image to Apptainer
echo "Building Apptainer image from Docker image..."
apptainer build /apptainer/flask-app.sif docker-daemon://flask-docker-app:latest

# Run Apptainer image
echo "Running Apptainer container..."
apptainer run /apptainer/flask-app.sif
