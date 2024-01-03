FROM python:latest

# Install dependencies
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y git curl python3-pip ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip3 install -U pip

# Copy the application code into the container
COPY . /app/

# Set the working directory
WORKDIR /app/

# Install Python dependencies from requirements.txt
RUN pip3 install -U -r requirements.txt

# Set the PORT environment variable
ENV PORT 8080

# Add executable permission to start script
RUN chmod +x start

# Run the start script
CMD ["./start"]
