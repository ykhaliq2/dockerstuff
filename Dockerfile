# Base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Get necessary files from GitHub
ARG GITHUB_URL
RUN apt-get update && apt-get install -y curl && \
    curl -O ${GITHUB_URL}requirements.txt && \
    curl -O ${GITHUB_URL}app.py

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port for Flask
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
