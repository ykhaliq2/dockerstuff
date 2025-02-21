FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Update packages, install Python3, pip, and Flask
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install flask && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY Files/app.py /app/
CMD ["python3","/app/app.py"]
