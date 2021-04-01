## calc.def

* **Main software installed inside:** Calc - A C-style arbitrary precision calculator.
* **Description:** Ever wished you could have GNU's `bc`, but with more functionality? Well this container is just for you with Calc installed. Calc is a more extensible version of `bc`.

## Pre-requisites

There are no pre-requisites for this container. All dependencies are downloaded at build time!

## How to build calc.def

Only one command is needed:

```bash
$ sudo singularity build calc.sif calc.def
```

You can also use the sylabs remote builder to build this container:

```bash
$ singularity build --remote calc.sif calc.def
```

## How to interact with the calc container

To utilize calc from the command line and read calc script files, you simply only need to use the following command:

```bash
$ singularity exec calc.sif calc
```

## Authors

* Jason C. Nucciarone - NucciTheBoss - jcn23@psu.edu
