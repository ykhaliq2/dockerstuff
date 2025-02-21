# Base Image
FROM python:3.8-slim

# Set Working Directory
WORKDIR /app

# Copy Application Files
COPY . /app

# Install Dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Port
EXPOSE 5000

# Start the Flask application
CMD ["python", "app.py"]
