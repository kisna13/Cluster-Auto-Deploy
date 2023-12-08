FROM ubuntu:23.10

# Install required packages including sudo
RUN apt-get update -y && \
    apt-get install -y sudo python3-pip python3.11-venv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Create a non-root user with sudo privileges
RUN useradd -m -s /bin/bash myuser && \
    echo 'myuser:password' | chpasswd && \
    usermod -aG sudo myuser && \
    echo 'myuser ALL=(ALL:ALL) NOPASSWD:ALL' >> /etc/sudoers

USER myuser

# The rest of your Dockerfile
