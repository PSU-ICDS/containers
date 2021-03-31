## LAYNII.def

* **Main software installed inside:** LAYNII - A stand alone fMRI software suite for layer-fMRI analyses.
* **Description:** A container with LAYNII installed inside. LAYNII, *if I remember correctly*, need to be installed inside a container because it was incompatible with Roar's version of `glibc`.

## Pre-requisites

There are no build dependencies for this container. All of LAYNII's dependencies are downloaded at build time.

## How to build LAYNII.def

Only one command is neccessary to build this container:

```bash
$ sudo singularity build LAYNII.sif LAYNII.def
```

The sylabs remote builder can also be used to build this container:

```bash
$ singularity build --remote LAYNII.sif LAYNII.def
```

## How to interact with the LAYNII container

Simply use the following command to call your desired LAYNII command:

```bash
$ singularity exec LAYNII.sif <name_of_LAYNII_command>
```

## Authors

* Jason C. Nucciarone - NucciTheBoss - jcn23@psu.edu
