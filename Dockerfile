FROM ubuntu:23.10

RUN apt-get update -y && \
    apt-get install -y sudo python3-pip python3.11-venv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash myuser && \
    echo 'myuser ALL=(ALL:ALL) NOPASSWD:ALL' >> /etc/sudoers

USER myuser
