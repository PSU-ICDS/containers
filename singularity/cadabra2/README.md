## cadabra2.def

* **Main software installed inside:** Cadabra - A symbolic computer algebra system designed specifically for the solution of problems encountered in field theory.
* **Description:** This container builds the Cadabra software from source by cloning the main repository hosted on GitHub. Where this container defers from the Cadabra environment that can be downloaded by conda package manager is that it also comes package with the `cadabra-gtk` package. Alongside being able to use the `cadabra` command line client, you can also launch the graphical interface as well.

## Pre-requisites

There are no pre-requisites needed to successfully build this container. All of cadabra's dependencies are downloaded at build time.

## How to build cadabra2.def

Only one command is needed!

```bash
$ sudo singularity build cadabra2.sif cadabra2.def
```

You can also use the sylabs remote builder for this container:

```bash
$ singularity build --remote cadabra2.sif cadabra2.def
```

## How to interact with the cadabra2 container

To lauch the cadabra command line client:

```bash
$ singularity exec cadabra2.sif cadabra2
```

To launch `cadabra-gtk`:

```bash
$ singularity exec cadabra2.sif cadabra2-gtk
```

## Authors

* Jason C. Nucciarone - NucciTheBoss - jcn23@psu.edu