FROM fedora:33

SHELL ["/usr/bin/bash", "-c"]

ENV CONFIG_SHELL=/usr/bin/bash

LABEL author="Jason C. Nucciarone" \
    maintainer="Jason C. Nucciarone" \
    owner="Jason C. Nucciarone" \
    version="v1.0"

# Install Lmod dependencies
RUN yum update -y && yum install -y \
    git tar which bzip2 xz make automake wget gcc gcc-c++ \
    patch python-keyring zlib-devel openssl-devel \
    unzip iproute lua lua-devel lua-posix lua-filesystem tcl tcl-devel \
    procps-ng procps-ng-devel

# Install Lmod
RUN mkdir -p /opt/apps && \
    cd /opt/apps && \
    wget https://github.com/TACC/Lmod/archive/refs/tags/8.4.3.tar.gz -O - | tar -xz && \
    cd Lmod-8.4.3 && \
    ./configure --prefix=/opt/apps && \
    make install && \
    ln -s /opt/apps/lmod/lmod/init/profile /etc/profile.d/modules.sh && \
    ln -s /opt/apps/lmod/lmod/init/cshrc /etc/profile.d/modules.csh

# Start bash when using `docker run`
CMD ["/usr/bin/bash"]
