# Create a base image from ubuntu with basic utils
FROM ubuntu:focal AS base
WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y curl git ansible build-essential && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

# Create a user image from base with colinfaivre user
FROM base AS colin
RUN addgroup --gid 1000 colinfaivre
RUN adduser --gecos colinfaivre --uid 1000 --gid 1000 --disabled-password colinfaivre
WORKDIR /home/colinfaivre

# Create a last image to copy current directory
FROM colin
COPY . .
