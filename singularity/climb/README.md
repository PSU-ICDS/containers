## climb.def

* **Main software installed inside:** CLIMB - Composite Likelihood Empirical Bayes
* **Description:** CLIMB is a popular R package that is used by quite a few users on the Roar cluster, however, it requires a lot of dependencies that cannot be installed on Roar unless you have root priviledges. As such, this container was built to support those users!

## Pre-requisites

* [Julia 1.0.5](https://julialang.org/downloads/)
* [Lemon 1.3.1](https://lemon.cs.elte.hu/trac/lemon/wiki/Downloads)
* [r-base-roar:3.6.3 Docker Image](https://hub.docker.com/r/nucci2/r-base-roar)

## How to build climb.def

First, you need to make the `src` directory and the download the dependencies using the following commands:

```bash
$ mkdir src
$ cd src
$ wget https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.5-linux-x86_64.tar.gz
$ wget http://lemon.cs.elte.hu/pub/sources/lemon-1.3.1.tar.gz
$ cd ..
```

Now build the container using singularity:

```bash
$ sudo singularity build climb.sif climb.def
```

**Unforunately,** the sylabs remote builder cannot be used to build this container.

## How to interact with the CLIMB container

You would interact with the CLIMB container like any regular singularity R containter. For example, here is how you would call `R` or `Rscript`:

```bash
$ singularity exec climb.sif R
$ singularity exec climb.sif Rscript
```

You can also use the following command to call Julia from inside the container:

```bash
$ singularity exec climb.sif julia
```

## Authors

* Jason C. Nucciarone - NucciTheBoss - jcn23@psu.edu
