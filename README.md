# Table of Contents

* [Overview](#overview)
* [Repository Structure](#repository-structure)
* [Container List](#container-list)
* [Contributing](#contributing)
* [Authors](#authors)
* [License](#license)
* [Troubleshooting](#troubleshooting)

# Overview

![Demonstration](./share/gifs/demo.gif)

Welcome to the ICDS container collection! Here you can find the Docker and Singularity containers that are built by the community or by the techs that are members of the i-ASK Software Engineers team. This repository is hosted in the hopes that the traveling researcher or post-undergraduate student well find the container solution that the need for their workflow. If you have any questions, then please feel free to open an issue on this repository! If you are interested in adding more containers to this repository, keep reading! 

# Repository Structure

This is brief overview of where all the relevant files are stored in this repository:

* **`/docker`** - Where all the Dockerfiles are stored.
* **`/singularity`** - Where all the singularity definition files are stored.
* **`/share/doc`** - Where the documentation to help you get started working with Singularity and Docker is stored.
* **`/share/gifs`** - Where the gifs you see in this README are stored.

# Container List

Now while you can find the more specific documentation for a container in the `/singularity` or `/docker` directories, here is a list of the containers currently available in this repository.

## Docker

Here is the list of Dockerfiles currently stored in this repository:

* **r-base-3.6.3** - a basic container for R 3.6.3 built on top of Debian Bullseye.
* **r-base-4.0.3** - a basic container for R 4.0.3 built on top of Debian Bullseye.
* **rstudio** - a container with RStudio and R 4.0.3 installed together.

## Singularity

Here is the list of Singularity Definition Files currently stored in this repository:

* **cadabra2** - a field theory motivated approach to computer algebra ([website](https://cadabra.science/)).
* **calc** - C-style arbitrary precision calculator ([website](http://isthe.com/chongo/tech/comp/calc/index.html)).
* **climb** - Composite Likelihood Empirical Bayes ([website](https://github.com/hillarykoch/CLIMB)).
* **custom** - a hodgepodge of miscellanious but useful containers.
* **hicpro** - An optimized and flexible pipeline for Hi-C data processing ([website](https://github.com/nservant/HiC-Pro)).
* **laynii** - Stand alone fMRI software suite for layer-fMRI analyses ([website](https://github.com/layerfMRI/LAYNII)).
* **libbi** - LibBi is used for state-space modelling and Bayesian inference on high-performance computer hardware, including multi-core CPUs, many-core GPUs (graphics processing units) and distributed-memory clusters ([wesbite](https://libbi.org/index.html)).
* **nlopt** - a free/open-source library for nonlinear optimization ([website](https://nlopt.readthedocs.io/en/latest/)).
* **rstudio** - an IDE for writing your R code and applications ([website](https://www.rstudio.com/)).
* **selenium** - a browser automation tool ([website](https://www.selenium.dev/)).

# Contributing

If you would like to contribute to this repository, such as adding a new container, make an update, open an issue, or even suggest an enhancement, then please read through this repository's CONTRIBUTING file for more info.

# Authors

* Jason C. Nucciarone - NucciTheBoss - jcn23@psu.edu

# License

![License](https://img.shields.io/badge/license-MIT-brightgreen)

This repository is licensed under the permisive MIT License. For more information on what this license entails, please feel free to visit https://en.wikipedia.org/wiki/MIT_License.

# Troubleshooting

If you encounter any issues while working with, building, or modifying any container stored in this collection, please open an issue on this repository or email iask@ics.psu.edu. In that issue/email, please describe the issue that you are having, and please explain what you are trying to do with the container. The more information the merrier!
