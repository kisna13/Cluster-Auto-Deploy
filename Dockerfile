FROM node:16

USER root

# Install required packages including sudo
RUN apt-get update -y && \
    apt-get install -y sudo python3-pip python3-venv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER root

# Test sudo
RUN sudo ls /
