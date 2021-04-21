## lmod-8.4.3

* **Main software installed inside:** Lmod 8.4.3
* **Description:** This container is used for conducting tests with module files before being deployed on the cluster. Container comes with a bare-bones installation of Lmod 8.4.3 in a Fedora 33 environment.

## Pre-requisites

You do not need to download any pre-requisites before building this container. All the necessary files are downloaded at build time!

## How to build lmod-8.4.3

In order to build `lmod-8.4.3` using Docker, simply use the following command:

```bash
$ sudo docker build -t lmod:8.4.3 .
```

Just wait a couple seconds and magic will be performed!

## How to interact with the lmod-8.4.3 container

This container is designed with the idea that you will either remote into it using a text editor like VSCode or run it from the command line. In order to launch this container's command line interface, simply use the following command:

```bash
$ docker run -it lmod:8.4.3
```

The above command should launch an interactive bash shell in your terminal:

```
[root@4592dc72de14 /]#
```

In order for you to successfully connect to the container, you will need to start it as a daemon on your system. You can start the container as a daemon by using the following command:

```bash
$ docker run -dt lmod:8.4.3
```

## Authors

* Jason C. Nucciarone - NucciTheBoss - jcn23@psu.edu
