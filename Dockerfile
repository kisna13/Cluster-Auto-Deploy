FROM ubuntu:23.10
RUN apt-get update -y && apt install python3-pip -y && apt install python3.11-venv
USER root
