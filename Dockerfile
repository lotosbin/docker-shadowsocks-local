FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y python-pip libsodium18
RUN pip install --upgrade pip
RUN pip install shadowsocks==2.9.1

ENTRYPOINT ["sslocal"]

