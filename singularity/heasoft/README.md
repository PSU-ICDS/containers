## heasoft.def

* **Main software installed inside:** THe HEASoft software package.
* **Description:** A container containing HEASoft - A Unified Release of the FTOOLS and XANADU Software Packages. 

## Pre-requisites

* In order to successfully build the HEASoft container, you will need to download the  Scientific Linux release of HEASoft 6.26.

  * https://heasarc.gsfc.nasa.gov/lheasoft/download.html

## How to build heasoft.def

To build HEASoft, simply use the following command (and have the source code release of HEASoft for Scientific Linux available in the same directory):

```bash
$ sudo singularity build heasoft.sif heasoft.def
```

**Unfortunately**, due to the large size of HEASoft (almost 6GB!), you cannot use the sylabs remote builder to build this container.

## How to interact with the HEASoft container

**This container is experimental!** As such, the duty will be on you to figure out how to interact with the container. Unfortunately, I never really had the chance to perform rigorous testing on this container, so I am unsure how it will specifically fit to your use case.

## Authors

* Jason C. Nucciarone - NucciTheBoss - jcn23@psu.edu
