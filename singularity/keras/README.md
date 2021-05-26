## keras.def

* **Main software installed inside:** Keras
* **Description:** Keras is an API designed for human beings, not machines. Keras follows best practices for reducing cognitive load: it offers consistent & simple APIs, it minimizes the number of user actions required for common use cases, and it provides clear & actionable error messages. It also has extensive documentation and developer guides.

## Pre-requisites

* There are no pre-requisites for this container. All dependencies are downloaded at build time.

## How to build keras.def

In order to build keras.def, you only need to use the following command:

```bash
$ sudo singularity build keras.sif keras.def
```

You can also use the sylabs remote builder to build this container:

```bash
$ singularity build --remote keras.sif keras.def
```

## How to interact with the Keras container

To access the keras installed inside the container, simply use the following command to access the Python interpreter installed inside the container:

```bash
$ singularity exec keras.sif python
```

To execute a Python script from inside the container, simply use the following command:

```bash
$ singularity exec keras.sif python your-python-file.py
```

## Authors

* Jason C. Nucciarone - NucciTheBoss - jcn23@psu.edu
