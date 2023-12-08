FROM ubuntu:23.10
RUN apt-get update -y && apt install python3-pip -y && apt install python3.11-venv -y
USER root

RUN useradd -m -s /bin/bash myuser && \
    echo 'myuser ALL=(ALL:ALL) NOPASSWD:ALL' >> /etc/sudoers
USER myuser
