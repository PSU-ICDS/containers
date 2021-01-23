FROM debian:bullseye

ENV TZ=America/New_York

COPY src/R-4.0.3.tar.gz /opt
COPY src/bzip2-1.0.6.tar.gz /opt
COPY src/xz-5.2.3.tar.bz2 /opt
COPY src/curl-7.56.1.tar.bz2 /opt
COPY src/pcre2-10.36.tar.bz2 /opt

# Add Labels
LABEL author="Jason C. Nucciarone" \
    maintainer="Jason C. Nucciarone" \
    owner="Jason C. Nucciarone" \
    version="v1.0"

# Install the essentials
RUN apt-get update -y && \
    apt-get install -y \
    build-essential wget file git libreadline8 \
    locales-all moreutils parallel cmake libreadline-dev gfortran \
    xorg-dev libboost-dev openmpi-bin libopenmpi-dev -y

# Set up timezone
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && \
    echo ${TZ} > /etc/timezone

# Install packages needed for specific R packages
RUN apt-get install -y \
    libssl-dev libxml2-dev \
    libgit2-dev libssh2-1-dev \
    libjpeg-dev libjpeg62-turbo-dev

# Uncompress and install bzip2-1.0.6
RUN cd /opt && \
    tar -xzvf bzip2-1.0.6.tar.gz && \
    rm -rf bzip2-1.0.6.tar.gz && \
    cd bzip2-1.0.6 && \
    make -f Makefile-libbz2_so && \
    make install

# Uncompress and install xz-5.2.3
RUN cd /opt && \
    tar -xjvf xz-5.2.3.tar.bz2 && \
    rm -rf xz-5.2.3.tar.bz2 && \
    cd xz-5.2.3 && \
    ./configure && \
    make && \
    make install

# Uncompress and install curl 7.56.1
RUN cd /opt && \
    tar -xjvf curl-7.56.1.tar.bz2 && \
    rm -rf curl-7.56.1.tar.bz2 && \
    cd curl-7.56.1 && \
    ./configure && \
    make && \
    make install

# Uncompress and install pcre2-10.36
RUN cd /opt && \
    tar -xjvf pcre2-10.36.tar.bz2 && \
    rm -rf pcre2-10.36.tar.bz2 && \
    cd pcre2-10.36 && \
    ./configure --enable-utf8 --enable-unicode-properties && \
    make && \
    make install

# Uncompress and install R 4.0.3
RUN cd /opt && \
    tar -xzvf R-4.0.3.tar.gz && \
    rm -rf R-4.0.3.tar.gz && \
    cd R-4.0.3 && \
    ./configure --enable-R-shlib && \
    make && \
    make install && \
    cd /opt

# Final environment needed
ENV R_ROOT=/usr/local/lib/R
    
ENV LD_LIBRARY_PATH=/usr/local/lib:${R_ROOT}/lib:${LD_LIBRARY_PATH} \
    LIBRARY_PATH=/usr/local/lib:${R_ROOT}/lib:${LIBRARY_PATH} \
    CPATH=${R_ROOT}/include:${CPATH} \
    LC_ALL=en_US.utf8 \
    LANG=en_US.utf8
