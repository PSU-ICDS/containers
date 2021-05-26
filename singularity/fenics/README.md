## fenics.def

* **Main software installed inside:** Python interface for the FEniCS computing platform.
* **Description:** FEniCS is a popular open-source [(LGPLv3)](https://www.gnu.org/licenses/lgpl-3.0.en.html) computing platform for solving partial differential equations (PDEs). FEniCS enables users to quickly translate scientific models into efficient finite element code. With the high-level Python and C++ interfaces to FEniCS, it is easy to get started, but FEniCS offers also powerful capabilities for more experienced programmers. FEniCS runs on a multitude of platforms ranging from laptops to high-performance clusters.

## Pre-requisites

* There are no pre-requisites for this container. All dependencies are downloaded at container build time.

## How to build fenics.def

To build the FEniCS container, you only need to use one command:

```bash
$ sudo singularity build fenics.sif fenics.def
```

Also, you have the option to build this container using the sylabs remote builder:

```bash
$ singularity build --remote fenics.sif fenics.def
```

## How to interact with the FEniCS container

In order to interact with the FEniCS container, all you need to do is launch the python interpreter:

```bash
$ singularity exec fenics.sif python
```

To execute Python scripts out of the FEniCS container, you only need to use something like the following command:

```bash
$ singularity exec fenics.sif python your-python-script.py
```

## Authors

* Jason C. Nucciarone - NucciTheBoss - jcn23@psu.edu
