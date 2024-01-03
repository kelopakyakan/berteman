FROM python:3.9.7-slim-buster

# Update and upgrade system packages
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y git curl python3-pip ffmpeg && \
    pip3 install -U pip && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs && \
    npm i -g npm

# Copy application code into the container
COPY . /app/

# Set the working directory
WORKDIR /app/

# Install Python dependencies from requirements.txt
RUN pip3 install -U -r requirements.txt

# Set the CMD to start the application
CMD ["bash", "start.sh"]
