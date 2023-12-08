FROM ubuntu:23.10
RUN add-apt-repository universe && apt-get update && apt install python3-pip
