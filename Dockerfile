FROM python:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN python3 -m pip install --upgrade pip
COPY . /app/
WORKDIR /app/
RUN pip3 install -U -r requirements.txt
# Set the PORT environment variable
ENV PORT 8080
CMD ["bash","start"]
