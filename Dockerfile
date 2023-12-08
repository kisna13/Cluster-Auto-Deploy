FROM ubuntu:23.10
RUN apt-get update -y && apt install python3-pip -y
RUN python3 -m pip install ansible junit_xml pymongo xmljson jmespath kubernetes==12.0.1 openshift==0.12.1
