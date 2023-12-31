FROM node:16

USER root

RUN apt-get update -y && \
    apt-get install -y sudo python3-pip python3-venv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -u 117 -m -G sudo -s /bin/bash myuser && \
    echo 'myuser:password' | chpasswd

RUN echo 'myuser ALL=(ALL:ALL) NOPASSWD:ALL' >> /etc/sudoers

USER myuser
