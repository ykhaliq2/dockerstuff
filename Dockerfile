# Use Python 3 base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy application files
COPY app.py /app

# Install Flask
RUN pip install flask

# Expose port 2222
EXPOSE 2222

# Command to run the app
CMD ["python", "app.py"]
