## selenium_latest.def

* **Main software installed inside:** Selenium
* **Description:** Have you ever needed to automate a browser process on Roar? Well this container is for you. With Jupyter Notebook, Mozilla Firefox, Python, and Selenium installed, you will be an unstoppable automation force.

## Pre-requisites

There are no pre-requisites for this container. All build dependencies are downloaded at build time.

## How to build selenium_latest.def

You only need to use one command in order to build this container:

```bash
$ singularity build selenium_latest.sif selenium_latest.def
```

You can also build this container using the sylabs remote builder:

```bash
$ singularity build --remote selenium_latest.sif selenium_latest.def
```

## How to interact with the Selenium container

For this container, the python integration for Selenium is installed. Therefore, to interact with Selenium, you simply need to launch the python interpreter installed inside by using the following command:

```bash
$ singularity exec selenium_latest.sif python
```

## Authors

* Jason C. Nucciarone - NucciTheBoss - jcn23@psu.edu
