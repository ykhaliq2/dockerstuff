# Base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Set Default GitHub URL and Allow Overriding
ARG GITHUB_URL=https://raw.githubusercontent.com/ykhaliq2/flask-docker-app/main/
ENV GITHUB_URL=${GITHUB_URL}

# Install dependencies
RUN apt-get update && apt-get install -y curl && \
    curl -O ${GITHUB_URL}requirements.txt && \
    curl -O ${GITHUB_URL}app.py

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port for Flask
EXPOSE 5000

# Run the Flask app directly
CMD ["python", "app.py"]
