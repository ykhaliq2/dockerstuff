# Base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Install curl to download files
RUN apt-get update && apt-get install -y curl

# Set Default GitHub URL and Allow Overriding
ARG GITHUB_URL=https://raw.githubusercontent.com/ykhaliq2/flask-docker-app/main/
ENV GITHUB_URL=${GITHUB_URL}

# Download necessary files directly from GitHub
RUN curl -O ${GITHUB_URL}requirements.txt && \
    curl -O ${GITHUB_URL}app.py

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port for Flask
EXPOSE 5000

# Run the Flask app directly
CMD ["python", "app.py"]
