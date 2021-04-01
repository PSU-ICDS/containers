## hicpro.def

* **Main software installed inside:** HiC-Pro - An optimized and flexible pipeline for Hi-C data processing.
* **Description:** Singularity is the recommended installation method for HiC-Pro on clusters like Roar.

## Pre-requisites

* This container needs to be built on a Debian-based system that uses the `apt` package manager.

## How to build hicpro.def

To build this container, you only need to use one command:

```bash
$ sudo singularity build hicpro.sif hicpro.def
```

**Unforunately,** the sylabs remote builder cannot be used to build this container.

## How to interact with the HiC-Pro container

You can use the following command to call the HiC-Pro command line application from inside the singularity container:

```bash
$ singularity exec hicpro.sif HiC-Pro
```

## Authors

* Jason C. Nucciarone - NucciTheBoss - jcn23@psu.edu
* Nicolas Servant - nservant