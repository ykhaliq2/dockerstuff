# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the application code into the container
COPY app.py /app.py

# Install Flask
RUN pip install flask

# Set environment variables for Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000

# Expose the port Flask runs on
EXPOSE 5000

# Command to run the application
CMD ["python3", "/app.py"]
