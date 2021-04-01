## nlopt.def

* **Main software installed inside:** NLopt - a free/open-source library for nonlinear optimization.
* **Description:** This container has the NLopt software installed. Originally, NLopt was installed inside this container because installing NLopt from its Makefile has always been extremely buggy. NLopt has many awesome integrations, for example Python, Octave, MATLAB, GNU Guile, etc. However, they all never work if you install NLopt in a non-standard location. Therefore, it was necessary to install NLopt inside a container.

## Pre-requisites

There are no pre-requisites for this repository. All the dependencies are downloaded at build time.

## How to build nlopt.def

Only one command is needed to build this container:

```bash
$ singularity build nlopt.sif nlopt.def
```

Also, you can use the sylabs remote builder to build this container as well:

```bash
$ singularity build --remote nlopt.sif nlopt.def
```

## How to interact with the NLopt container

For this container, the NLopt integrations for Octave, GNU Guile (a scheme dialect), and Python were installed. Below are the commands you can use to access all three from within the container:

```bash
$ singularity exec nlopt.sif octave
$ singularity exec nlopt.sif guile
$ singularity exec nlopt.sif python
```

## Authors

* Jason C. Nucciarone - NucciTheBoss - jcn23@psu.edu
