## gnucobol.def

* **Main software installed inside:** The GnuCOBOL compiler
* **Description:** A free/libre COBOL compiler. GnuCOBOL produces native executables from COBOL source code. It is known to work on Linux, BSD, many proprietary Unixes, macOS, and Windows, among others. The current release, version 3.1.2, is the best version for all users. It has been extensively tested on a variety of platforms and is being used in commercial settings.

## Pre-requisites

* There are no pre-requisites for this container. All dependencies are downloaded at container build time.

## How to build gnucobol.def

To build the GnuCOBOL container, you only need to use the following command:

```bash
$ sudo singularity build gnucobol.sif gnucobol.def
```

You can also build this container utilizing the sylabs remote builder:

```bash
$ singularity build --remote gnucobol.sif gnucobol.def
```

## How to interact with the GnuCOBOL container

To compile COBOL files using the GnuCOBOL compiler inside the container, simply use something like the following command:

```bash
$ singularity exec gnucobol.sif cobc your-cobol-file.cob
```

To execute the compiled COBOL executable from within the container, simply launch a shell session inside the container and execute your executable:

```bash
$ singularity shell gnucobol.sif
Singularity> ./your-cobol-executable
```

## Authors

* Jason C. Nucciarone - NucciTheBoss - jcn23@psu.edu
