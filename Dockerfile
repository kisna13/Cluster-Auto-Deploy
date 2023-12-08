FROM node:16

USER root

# Install required packages including sudo
RUN apt-get update -y && \
    apt-get install -y sudo python3-pip python3-venv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Add a user with sudo privileges
RUN useradd -m -s /bin/bash myuser && \
    echo 'myuser:password' | chpasswd && \
    usermod -aG sudo myuser && \
    echo 'myuser ALL=(ALL:ALL) NOPASSWD:ALL' >> /etc/sudoers

USER myuser

# Test sudo
RUN sudo ls /
