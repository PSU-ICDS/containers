FROM ubuntu:16.04

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
    build-essential wget curl file git libreadline6 \
    gdebi-core locales-all moreutils parallel libreadline-dev \
    gfortran openmpi-bin libopenmpi-dev

# Software needed to open RStudio
RUN apt-get install -y \
    libgl1-mesa-glx libgl1-mesa-dev libdbus-1-3 libdbus-1-dev \
    libnss3 libxcomp3 libxcomposite1 libxcomposite-dev libxcursor1 \
    libxcursor-dev libxi6 libxi-dev libxtst6 libxtst-dev libxt6 \
    libxt-dev libasound2

# Graphical libraries needed to open on Roar
RUN apt-get install -y \
    libcanberra-gtk-module libcanberra-gtk3-module

# Set up timezone
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && \
    echo ${TZ} > /etc/timezone

# Install packages needed for specific R packages
RUN apt-get install -y \
    libssl-dev libxml2-dev libgit2-dev libssh2-1-dev \
    libjpeg-dev libjpeg-turbo8-dev

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

# Install RStudio and clean up
RUN cd ${HOME} && \
    mkdir -p ${HOME}/install && \
    cd ${HOME}/install && \
    wget https://download1.rstudio.org/desktop/xenial/amd64/rstudio-1.3.1093-amd64.deb && \
    gdebi -n ./rstudio-1.3.1093-amd64.deb && \
    cd ${HOME} && rm -rf ${HOME}/install

# Final environment needed
ENV R_ROOT=/usr/local/lib/R
    
ENV LD_LIBRARY_PATH=/usr/local/lib:${R_ROOT}/lib:${LD_LIBRARY_PATH} \
    LIBRARY_PATH=/usr/local/lib:${R_ROOT}/lib:${LIBRARY_PATH} \
    CPATH=${R_ROOT}/include:${CPATH} \
    LC_ALL=en_US.utf8 \
    LANG=en_US.utf8 \
    RSTUDIO_WHICH_R=/usr/local/bin/R \
    XDG_RUNTIME_DIR=${HOME}
