## mzmine2.def

* **Main software installed inside:** MZmine 2
* **Description:** MZmine 2 is an open-source software for mass-spectrometry data processing, with the main focus on LC-MS data. It is based on the original MZmine toolbox described in the 2006 Bioinformatics publication, but has been completely redesigned and rewritten since then. Our main goal is to provide a user-friendly, flexible and easily extendable software with a complete set of modules covering the entire LC-MS data analysis workflow.

## Pre-requisites

* This container needs to be built on a Debian-based Linux distro. The container requires the installation of a package on the host system.

## How to build mzmine2.def

In order to build this container, simply use the following command:

```bash
$ sudo singularity build mzmine2.sif mzmine2.def
```

**Unfortunately**, since the container requires a package to be installed on the host system to build correctly, you cannot use the sylabs remote builder to build this container.

## How to interact with the MZmine 2 container

**This container is experimental!** As such, the duty will be on you to figure out how to interact with the container. Unfortunately, I never really had the chance to perform rigorous testing on this container, so I am unsure how it will specifically fit to your use case.

## Authors

* Jason C. Nucciarone - NucciTheBoss - jcn23@psu.edu
