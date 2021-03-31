## libbi.def

* **Main software installed inside:** LibBi - LibBi is used for state-space modelling and Bayesian inference on high-performance computer hardware, including multi-core CPUs, many-core GPUs (graphics processing units) and distributed-memory clusters.
* **Description:** This container comes with a lot of fun tools installed inside. This container was primarily built to containerize the LibBi workflow, so it comes with RStudio and Perl installed inside as well.

## Pre-requisites

The are no pre-requisites needed for this container. All of LibBi's dependency are downloaded at build time.

## How to build libbi.def

You only need to use one command!

```bash
$ sudo singularity build libbi.sif libbi.def
```

While you can use the sylabs remote builder for this container, **it is not recommended**. LibBi takes quite a long time to compile, and it may go over the hour limit that you are given for your

## How to interact with the LibBi container

For this container, you would interact with it as if you are using any regular R Singularity container. Here are the commands that you can use to interact with the `R` and `Rscript` inside this container:

```bash
$ singularity exec libbi.sif R
$ singularity exec libbi.sif Rscript
```

Also, by the request of the group that needed this container, RStudio was also installed inside this container. Here is the command that you can use to launch RStudio:

```bash
$ singularity exec libbi.sif rstudio
```

This container is also built to work with the Nvidia GPUs that are available on Roar. You enable Nvidia GPU support for this container by using the following command:

```bash
$ singularity exec --nv libbi.sif <your_command>
```

## Authors

* Jason C. Nucciarone - NucciTheBoss - jcn23@psu.edu
