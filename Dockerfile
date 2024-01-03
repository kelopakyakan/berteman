FROM theteamultroid/ultroid:main



# Copy the application code into the container
COPY . /app/

# Set the working directory
WORKDIR /app/

# Install Python dependencies from requirements.txt
RUN pip3 install -r requirements.txt

# Set the PORT environment variable
ENV PORT 8080



# Run the start script
CMD ["bash","start"]
