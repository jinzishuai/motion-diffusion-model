FROM nvidia/cuda:12.0.0-runtime-ubuntu20.04

ARG DEBIAN_FRONTEND=noninteractive

# nvidia docker runtime env
ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics,compat32,utility

# Install basic things we need
RUN apt-get update &&\
    apt-get install -y \
    nano git git-lfs \
    build-essential \
    wget \
    cmake \
    unzip \
    python3 python3-pip


# Install additional dependencies here
RUN apt-get update &&\
    apt-get install -y \
    ffmpeg \
    tensorrt

# Install python dependencies via pip
COPY requirements.txt /usr/local/share
RUN pip3 install -r /usr/local/share/requirements.txt &&\
    rm /usr/local/share/requirements.txt

# Install the spacy language model
RUN python3 -m spacy download en_core_web_sm
