## rstudio_base.def

* **Main software installed inside:** RStudio
* **Description:** Ever needed to run RStudio Desktop on Roar with specific system-level dependencies? Well this is just the container for you! With RStudio installed as a base, you just need to install the dependencies that you need.

## Pre-requisites

There are no pre-requisites for the container. All the build dependencies are downloaded at build time.

## How to build rstudio_base.def

You only need to use one command!

```bash
$ singularity exec build rstudio_base.sif rstudio_base.def
```

You can also build this container using the sylabs remote builder:

```bash
$ singularity exec rstudio_base.sif rstudio
```

## How to use the RStudio base container

Like any R singularity container, you can use the following commands to interact with `R` and `Rscript`:

```bash
$ singularity exec rstudio_base.sif R
$ singularity exec rstudio_base.sif Rscript
```

To launch RStudio, you can use the following command:

```bash
$ singularity exec rstudio_base.sif rstudio
```

## Authors

* Jason C. Nucciarone - NucciTheBoss - jcn23@psu.edu
