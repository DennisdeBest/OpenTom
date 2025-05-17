FROM ubuntu:22.04

# Set locale
ENV LANG=C
ENV LC_ALL=C

# Install dependencies
RUN apt-get update && apt-get install -y \
    autoconf \
    chrpath \
    fluid \
    imagemagick \
    libglib2.0-dev \
    libtool \
    subversion \
    xsltproc \
    gawk \
    dh-autoreconf \
    pkg-config \
    cmake \
    git \
    wget \
    nano \
    unzip \
    make \
    sudo \
    gcc \
    g++ \
    util-linux \
    telnet \
    fdisk \
    && apt-get clean

# Set up i386 architecture support
RUN dpkg --add-architecture i386
RUN apt-get update && apt-get install -y \
    libc6:i386 \
    libncurses5:i386 \
    libstdc++6:i386 \
    && apt-get clean

# Create a helper script for build
COPY docker/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

RUN mkdir -p /opentom

WORKDIR /opentom

COPY . /opentom
