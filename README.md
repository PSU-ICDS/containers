# Important message from lead maintainer of i-ASK repo

> Hello to those of you that occasionally visit this repo. I've been working at the i-ASK center for almost 2 years now, and this repo has been with me for a good part of it. That being said, back when I first started at the i-ASK center as an HPC software consultant, the Roar supercomputer (known as ICS-ACI at the time) was using RHEL6 as the operating system. If you didn't know, RHEL6 is ancient and is slowly being phased out. However, ICDS wasn't quite ready to make the jump to RHEL7. Unfortunately, most open-source developers had dropped the RHEL6 operating system like a fat sack of rocks. As such, I was often left scrambling trying to install software on the cluster. This is where Singularity came rolling in. Singularity enabled me to install software researchers needed. After a while, I decided to start documenting all the containers that I was building and that's how this repo was born. Over time I started including installers and modules that I was making as well. Now that the cluster has moved to RHEL7, it is time for this repo to return to its roots. Therefore, over the next couple of weeks, this repo will once again become a collection of containers. Also, the new name for this repo will be **iask-containers**!


# Table of Contents

* [Overview](#overview)
* [What is here](#what-is-here)
* [How-to-Use](#how-to-use)
* [License](#license)
* [Troubleshooting](#troubleshooting)

# Overview

![license](https://img.shields.io/github/license/NucciTheBoss/i-ASK)
![repo_size](https://img.shields.io/github/repo-size/NucciTheBoss/i-ASK)

Greetings! Welcome to my i-ASK repository! This is where I store some of the generic code that I write for users, technicians, and researchers that work on the Roar supercomputer at [Penn State University](https://www.psu.edu/). You can find things like singularity containers, module files, installers, and utility scripts that I write here.

# What is here

* [Modules](#modules)
* [Singularity Definition Files](#singularity-definition-files)
* [Dockerfiles](#dockerfiles)
* [Installers](#installers)
* [Other Projects](#other-projects)

## Modules

A collection of modules that I have created for users. Written in lua for use with [Lmod](https://lmod.readthedocs.io/en/latest/). Please note that these have been configured for the specific situation of the user (i.e. don't drag and drop module files). Modules are stored in the `/modules` directory. The list of available modules is as follows:

* Julia
* pandoc
* scripts

## Singularity Definition Files

A collection of definition files that I have used to build containers needed by users using [Singularity](https://sylabs.io/). I prefer to host my images on [Sylabs Cloud](http://cloud.sylabs.io/home), but there are many other ways to host singularity images. Generally, I design the containers specifc to the individual user's needs, but sometimes I will use base images that I have built myself. For specific information on definition files please refer to the [how-to-use](#how-to-use) section of the documentation. The definiton files are stored in `/src/def`. The list of available definition files is as follows:

* Cadabra2
* calc-def
* CLIMB-def
* Deeplearning Toolbox
* HiC-Pro
* LAYNII-def
* Libbi
* NLopt
* RStudio Base
* Selenium

## Dockerfiles

A collection of Dockerfiles that I have written to serve as the base for some of my Singularity containers (primarily R). I use Docker sometimes for container builds because I think the build process is better. I also like to have the ability to create sandboxes with Docker containers. The Dockerfiles are located in the `src/dockerfiles` directory of this repository. That being said, the list of available Dockerfiles is as follows:

* r-base-roar-3.6.3
* r-base-roar-4.0.3
* r-rstudio-roar-4.0.3

## Installers

This is a collection of scripts that I send to users to help them locally install software that they need for their research. Generally, they are written in bash, but sometimes I may use python to help with file management. These installers have dependencies, but they are usually packaged within the tar file or downloaded from the internet. The list of available installers is as follows:

* calc
* CLIMB
* julia-1.5.3
* LAYNII
* netCDF-c-base
* R-4.0.2
* SQLite3

## Other Projects

This is just a collection of other repositories that I have worked on that pertain to the i-ASK center. These are usually just popular containers that I have made for applications that users have requested. Here is a list of the other repositories that I have made:

* [eclipse_roar](https://github.com/NucciTheBoss/eclipse_roar)
* [turboseti_roar](https://github.com/ics-i-ask-center/turboseti_roar)
* [vscode_roar](https://github.com/NucciTheBoss/vscode_roar)
* [openfoam_roar](https://github.com/NucciTheBoss/openfoam8_roar)
* [petsc_roar](https://github.com/NucciTheBoss/petsc_roar)
* [openpose_roar](https://github.com/NucciTheBoss/openpose_roar)

# How-to-Use

* Modules
  
  * [Julia](#julia)
  * [pandoc](#pandoc)
  * [scripts](#scripts)

* Singularity Definition Files
  
  * [Cadabra2](#cadabra2)
  * [calc-def](#calc-def)
  * [CLIMB-def](#climb-def)
  * [Deeplearning Toolbox](#deeplearning-toolbox)
  * [HiC-Pro](#hic-pro)
  * [LAYNII-def](#laynii-def)
  * [Libbi](#libbi)
  * [NLopt](#nlopt)
  * [RStudio Base](#rstudio-base)
  * [Selenium](#selenium)

* Dockerfiles

  * [r-base-roar-3.6.3](#r-base-roar-3.6.3)
  * [r-base-roar-4.0.3](#r-base-roar-4.0.3)
  * [r-rstudio-roar-4.0.3](#r-rstudio-roar-4.0.3)

* Installers
  
  * [calc](#calc)
  * [CLIMB](#climb)
  * [julia-1.5.3](#julia-153)
  * [LAYNII](#laynii)
  * [netCDF-c-base](#netcdf-c-base)
  * [R-4.0.2](#r-4.0.2)
  * [SQLite3](#sqlite3)

* Other Projects

  * [eclipse_roar](#eclipse_roar)
  * [turboseti_roar](#turboseti_roar)
  * [vscode_roar](#vscode_roar)
  * [openfoam_roar](#openfoam_roar)
  * [petsc_roar](#petsc_roar)
  * [openpose_roar](#openpose_roar)

## Modules

### Julia

Since Julia is being consistently updated by its developers I like to have the most recent version of it installed on the cluster. I do this so that users can utilize the bleeding-edge of Julia, and get access to the newest features. Since the are many different versions of Julia, I have the ones I have documented installing below:

* [Julia 1.4.2](#julia-142)
* [Julia 1.5.0](#julia-150)

#### Julia 1.4.2

To load Julia 1.4.2, use the following commands:

```bash
$ module use /gpfs/group/dml129/default/nucci2/sw/modules
$ module load julia/1.4.2
```

#### Julia 1.5.0

To load Julia 1.5.0, use the following commands:

```bash
$ module use /gpfs/group/dml129/default/sw/modules
$ module load julia/1.5.0
```

---

### pandoc

Pandoc is great because it allows you to convert to many different markup languages. It is even a dependency for some popular packages, such as Rmarkdown. I now bring users the power to use this great tool with the following commands:

```bash
$ module use /gpfs/group/dml129/default/sw/modules
$ module load pandoc
```

To check that the module works, use the following command:

```bash
$ pandoc --version
```

You should see the following printed out to your command line:

```
pandoc 2.10
Compiled with pandoc-types 1.21, texmath 0.12.0.2, skylighting 0.8.5
Default user data directory: /storage/home/${USER}/.local/share/pandoc or /storage/home/${USER}/.pandoc
Copyright (C) 2006-2020 John MacFarlane
Web:  https://pandoc.org
This is free software; see the source for copying conditions.
There is no warranty, not even for merchantability or fitness
for a particular purpose.
```

To get more detailed information on pandoc you can visit their website here: https://pandoc.org/MANUAL.html

---

### scripts

This module is how to access the scripts I have written. Simply use the following commands to load the module:

```bash
$ module use /gpfs/group/dml129/default/sw/modules
$ module load scripts
```

To see a list of available scripts you can use one of the following commands:

```bash
$ module help scripts
```

or

```bash
$ scriptslist
```

If you are interested in writing your own shell scripts you can refer to this guide here: https://www.tutorialspoint.com/unix/shell_scripting.htm

## Singularity Definition Files

### Cadabra2

The Cadabra software is a field-theory motivated approach to computer algebra. Here it is installed inside a singularity container built upon Debian 9. I just host the definition file here but build the image is pretty easy.

Cadabra2 is available as a module on the cluster and can be loaded using the following commands:

```bash
$ module use /gpfs/group/dml129/default/nucci2/sw/modules
$ module load cadabra/2.2.9
```

To launch the Cadabra2 notebook you can use the following command:

```bash
$ cadabra-gtk
```

To launch the Cadabra2 CLI you can use the following command:

```bash
$ cadabra
```

---

### calc-def

Calc is an interactive calculator which provides for easy large numeric calculations, but which also can be easily programmed for difficult or long calculations. It can accept a command line argument, in which case it executes that single command and exits. Otherwise, it enters interactive mode. In this mode, it accepts commands one at a time, processes them, and displays the answers. This is an interesting piece of software that I installed for a user. It is virtually the same as the Unix utility `bc`, but it has more features. However, unfortunately, the maintainers did not include support for the `PREFIX` build option in the Makefile. Therefore, I had to install it inside a singularity container.

The container is primarily used for the [calc](#calc) installer. It is downloaded or copied in the script to the appropraite location, and is then setup as a loadable module.

---

### CLIMB-def
I built this singularity container in order to install Julia 1.0.5, R 3.6.3, tidyverse, and CLIMB in order to help users escape dependency hell. In this container, I ended up needing to build R 3.6.3 from source. Unfortunately, this container also isn't available on the cloud anywhere (it's application is too specific to justify using up my online storage space), so if you need a copy of this container then please email me at either jcn23@psu.edu or iask@ics.psu.edu.

**IMPORTANT:** This container will only work on Roar's RHEL7 nodes. This container is built using Debian 11 (Bullseye) which is incompatible with our RHEL6 nodes.

---

### Deeplearning Toolbox

The Deeplearing Toolbox is just a collection of python programs that are used for deep learning. You can find the likes of tensorflow, keras, and OpenCV2 installed inside of it. The definition file is just hosted here.

The Deeplearning Toolbox is available as a module on the cluster, and it can be loaded using the following commands:

```bash
$ module use /gpfs/group/dml129/default/nucci2/sw/modules
$ module load python-deeplearning-toolbox/1.1
```

To get a full list of what is installed inside the container simply use the following command:

```bash
$ module help python-deeplearning-toolbox/1.1
```

---

### HiC-Pro

HiC-Pro is an optimized and flexible pipeline for Hi-C data processing. Luckily, this is an easy program to inside a container. The definition file is just hosted here.

HiC-Pro is available as a module and can be loaded using the following commands:

```bash
$ module use /gpfs/group/dml129/default/nucci2/sw/modules
$ module load hicpro/2.11.4
```

Simply call the HiC-Pro executable to use it:

```bash
$ HiC-Pro <options> <arguments>
```

---

### LAYNII-def

This is a package of standalone layer functional magnetic resonance imaging (layer-fMRI) C++ programs that depends only on a C++ compiler. The purpose of this package is to provide layer-analysis software that are not (yet) included in the other major MRI analysis software. This software was built into a container since it depends on a newer version of glibc. The definition file is just hosted in this repository.

---

### Libbi

LibBi is used for state-space modelling and Bayesian inference on modern computer hardware, including multi-core CPUs, many-core GPUs (graphics processing units) and distributed-memory clusters. This is an image that I built for a user. Unfortunately it is not available as a module.

---

### NLopt

NLopt is a free/open-source library for nonlinear optimization, providing a common interface for a number of different free optimization routines available online as well as original implementations of various other algorithms. This is another container that I built for a user. Unfortunately it is also not available to be used as a module.

---

### RStudio Base

RStudio is an integrated development environment (IDE) for R. It includes a console, syntax-highlighting editor that supports direct code execution, as well as tools for plotting, history, debugging and workspace management. I use this image as a bootstrap for other images that require R and RStudio.

---

### Selenium

Selenium is a suite of tools for automating web browsers. For this container, the web browser is Firefox ESR. I originally made this container for user so that they could collect data from a website that they were working on, but I thought that it would be cool to make the container available to all users on the cluster. Also, who doesn't want a newer version of Firefox?

In order to launch Firefox, use the following command:

```bash
$ singularity exec --bind ~:/run selenium_latest.sif firefox-esr
```

I also installed jupyter notebook inside the container because it was the prefered development environment for the user. You can open jupyter notebook inside the container using the following command:

```bash
$ singularity exec --bind ~:/run selenium_latest.sif jupyter notebook
```

Unfortunately, it is not available as a module, but the definition file is hosted here for safe keeping.

## Dockerfiles

### r-base-roar-3.6.3

This is a base image for Singularity containers that need to have R 3.6.3 installed. This Dockerfile uses Debian Bullseye as a base. Therefore, **this container will only work on RHEL7 nodes!** If you are interested in learning about this Dockerfile, please see my repository on Docker Hub: https://hub.docker.com/r/nucci2/r-base-roar

In order to use an image of this Dockerfile as the base for a Singularity container, simply add the following lines to the top of your definition file:

```bash
Bootstrap: docker
From: nucci2/r-base-roar:3.6.3
```

---

### r-base-roar-4.0.3

This is a base image for Singularity containers that need to have R 4.0.3 installed. This Dockerfile uses Debian Bullseye as a base. Therefore, **this container will only work on RHEL7 nodes!** If you are interested in learning about this Dockerfile, please see my repository on Docker Hub: https://hub.docker.com/r/nucci2/r-base-roar

In order to use an image of this Dockerfile as the base for a Singularity container, simply add the following lines to the top of your definition file:

```bash
Bootstrap: docker
From: nucci2/r-base-roar:4.0.3
```

---

### r-rstudio-roar-4.0.3

This is a base image for Singularity containers that need to have R 4.0.3 and RStudio installed. This Dockerfile uses Ubuntu 16.04 LTS as a base. Since this Dockerfile uses an older version of Ubuntu, it will work on Roar's RHEL6 and RHEL7 nodes. If you are interested in learning about this Dockerfile, please see my repository on Docker Hub: https://hub.docker.com/r/nucci2/r-4.0.3-rstudio

In order to use an image of this Dockerfile as the base for a Singularity container, simply add the following lines to the top of your definition file:

```bash
Bootstrap: docker
From: nucci2/r-4.0.3-rstudio:latest
```

## Installers

### calc

I built this installer to help users locally install calc. This script does nothing fancy, but it does download my calc container stored in the cloud and move the module file to its respective directory. This file can executed anywhere as all it depends on is the `${HOME}` bash environment variable. The one major improvement however is that this installer can use a local copy of the calc container, instead of always having to download it from the cloud. Just package the container inside of the tar archive!

You can use the following instructions to construct the installer:

```bash
$ tar -czvf calc_installer.tar.gz calc  #=> Clone installers directory
```

Then, send the tar file to the user and have them execute the following commands:

```bash
$ tar -xzvf calc_installer.tar.gz
$ cd calc
$ chmod +x INSTALL
$ ./INSTALL
```

The user should then be able to access the module using the following commands:

```bash
$ module use ${HOME}/work/sw/modules
$ module load calc/2.12.7.1
```

Now the user should have their own LAYNII module!

---

### CLIMB
I built this installer to set up the CLIMB container in a users work directory. Since my CLIMB container is not hosted on the cloud, you will need to contact me at either jcn23@psu.edu or iask@ics.psu.edu in order to get your hands on a copy of this installer.

**IMPORTANT:** This installer will set up the CLIMB module in a directory named `sw7`. This is to indicate that that the module will only function properly on the RHEL7 nodes.

---

### julia-1.5.3
I built this installer for julia 1.5.3 because `/gpfs/group/dml129` seems to be entering a state of flux. Therefore, I felt more comfortable building this installer so the user could have a local copy of julia 1.5.3. This way, whatever happens with `/gpfs/group/dml129` will not impact the user.

You can use the following commands to create the julia 1.5.3 installer. **Note** that you will first need to download the julia 1.5.3 binary from [julialang.org](https://julialang.org/downloads/) first before constructing the installer. I did this because the `.tar.gz` file was too big to add to this git repository:

```bash
$ git clone https://github.com/NucciTheBoss/i-ASK.git
$ cd i-ASK/installers
$ mkdir -p julia-1.5.3/src
$ wget https://julialang-s3.julialang.org/bin/linux/x64/1.5/julia-1.5.3-linux-x86_64.tar.gz -P julia-1.5.3/src
$ tar -czvf julia_1.5.3_installer.tar.gz julia-1.5.3
```

Then, send the tar file to the user and have them execute the following commands:

```bash
$ tar -xzvf julia_1.5.3_installer.tar.gz
$ cd julia-1.5.3
$ chmod +x INSTALL
$ ./INSTALL
```

The user should then be able to load julia-1.5.3 into their environment by using the following commands:

```bash
$ module use ${HOME}/work/sw/modules
$ module load julia/1.5.3-local
```

Yay! Now the user has their own local copy of julia 1.5.3!

---

### LAYNII

I built this installer to help users locally install LAYNII. The script does nothing fancy, but it does download my LAYNII container stored in the cloud and move the module file to its respective directory. This file can executed anywhere as all it depends on is the `${HOME}` bash environment variable.

You can use the following instructions to construct the installer:

```bash
$ tar -czvf LAYNII_installer.tar.gz LAYNII  #=> Clone installers directory
```

Then, send the tar file to the user and have them execute the following commands:

```bash
$ tar -xzvf LAYNII_installer.tar.gz
$ cd LAYNII
$ chmod +x INSTALL
$ ./INSTALL
```

The user should then be able to access the module using the following commands:

```bash
$ module use ${HOME}/work/sw/modules
$ module load laynii/1.5.6
```

Now the user should have their own LAYNII module!

---

### netCDF-c-base

I built this installer to help users and groups install the most basic version of netCDF4 you can. There are a bajillion ways to configure netCDF, and this installer is as simple as you can get. There is no built-in support for Fortran or Java, just beautiful, pure C. This installation is perfect for anyone trying to install the R package [ncdf4](https://cran.r-project.org/web/packages/ncdf4/index.html). The installer will also automatically generate a module file. Not in the game of modifying users `.bashrc` files. To create the installer, use the following command:

```bash
$ tar -czvf netcdf-c-base_installer.tar.gz netcdf-c-base  #=> Clone installers directory
```

Please note that since I don't trust the internet (RHEL 6 repositories won't be around forever!) I put the appropriate dependencies in the `src` directory. Unfortunately, this does make the installer almost too large to send through email, so it might be better to host it in a shared folder (or FTP server!). However you get the installer out to the user, have them execute the following commands to install the basic netCDF:

```bash
$ tar -xzvf netcdf-c-base_installer.tar.gz
$ cd netcdf-c-base
$ chmod +x INSTALL
$ ./INSTALL /path/to/desired/dir
```

Once the installer is finished, the user will be able to load the module using the following commands:

```bash
$ module use /path/to/desired/dir/modules
$ module load netcdf/base-4.7.4
```

Now the user can compile their programs that only require the base netCDF!

---

### R-4.0.2

I built this installer to help users and groups install the newest version of R. R has a lot of dependencies, and this installer should take care of them. This installer is a little bit more involved since R is being installed in different locations. The neat thing that this installer does it automatically generate a module file, and it automatically detects if you have a prior R installation.

You can construct the installer using the following command:

```bash
$ tar -czvf R-4.0.2_installer.tar.gz R-4.0.2  #=> Clone installers directory
```

Then, send the tar file to the user and have them execute the following commands:

```bash
$ tar -xzvf R-4.0.2_installer.tar.gz
$ cd R-4.0.2
$ chmod +x INSTALL
$ ./INSTALL /path/to/desired/dir
```

This scipt will create the `modules` directory under the desired dir. To load the R module, use the following commands:

```bash
$ module use /path/to/desired/dir/modules
$ module load r/4.0.2
```

Now users can have the newest version of R!

#### Update 8/9/2020

The R installer now relies on `tar.gz` files stored in the `src` directory. I did this because the server that I would download the .rpm file from was very unweildy and not very dependable. Therefore, I modified the script to use files already stored on the cluster.

---

### SQLite3

Everyone loves databases, but sadly, databases don't love ACI. Since we don't have the allocatable resources to run databases, users can't utilize technologies like MySQL and MariaDB. Oh the humanity! Whatever will we do? Well, I know. Use SQLite3! SQLite3 is my favorite DBMS because it is so versatile. Because I love it so much, I built an installer that users can use to install SQLite3 themselves!

To create the installer, use the following commands:

```bash
$ tar -czvf sqlite3_installer.tar.gz sqlite3  #=> Clone installers directory
```

Then, send a copy to the user and have them execute the following commands:

```bash
$ tar -xzvf sqlite3_installer.tar.gz
$ cd sqlite3
$ chmod +x INSTALL
$ ./INSTALL /path/to/desired/dir
```

This scipt will create the `modules` directory under the desired dir. To load the SQLite3 module, use the following commands:

```bash
$ module use /path/to/desired/dir/modules
$ module load sqlite/3.33
```

Now users can execute structured queries to their hearts content!

## Other Projects

### eclipse_roar

This is a container that I wrote for the popular Java IDE Eclipse. While I'm personally a bigger fan of InetlliJ IDEA, the one advantage Eclipse has is that it is free and open-source. A couple of users requested it so they could work on their Java code on the cluster. You can access the repository [here](https://github.com/NucciTheBoss/eclipse_roar).

---

### turboseti_roar

This is a container that I wrote for the popular python and cli-app turboseti. I originally built this container so that I would not need to spend a bunch of time hunting down dependencies. You access the repository [here](https://github.com/ics-i-ask-center/turboseti_roar). 

---

### vscode_roar

This is an updated container image that I wrote for the popular text editor vscode. I originally forked the repository from another technician that works in the i-ASK center, and I updated the vscode that was installed inside the container. You can access the version of my repository [here](https://github.com/NucciTheBoss/vscode_roar).

---

### openfoam_roar

This is a repository that I made for install OpenFOAM 8 on the cluster. There are a lot of things going on in this repository, but I primarily use the [spack](https://spack.readthedocs.io/en/latest/) package manager to build OpenFOAM. I hate C++, but you can access the repository [here](https://github.com/NucciTheBoss/openfoam8_roar).

**Also!** There is an official version of OpenFOAM available on the RHEL7 software stack that is maintained by me (the official repository is hosted on GitLab). You can load the module by using the following commands:

```bash
$ module use /gpfs/group/RISE/sw7/modules
$ module load openfoam/v2012-gcc-8.3.1
```

---

### petsc_roar

This is a repository that is currently in progress, but I will have instructions for building [petsc](https://www.mcs.anl.gov/petsc/) from source on the cluster. You can access the repository [here](https://github.com/NucciTheBoss/petsc_roar).

---

### openpose_roar
This repository is for installing OpenPose on Roar. Not a huge fan since it uses an outdated GPU framework, but hey, I regretably installed it anyways. You can access this repository [here](https://github.com/NucciTheBoss/openpose_roar).


# License

This repository is licensed under the GNU General Public License v3.0. For more information on what this license entails, please feel free to visit https://www.gnu.org/licenses/gpl-3.0.en.html

# Troubleshooting

If you run into any issues regarding the use of anything in this repository then please contact Jason at either jcn23@psu.edu or at the ICDS i-ASK center (iask@ics.psu.edu). If you do run into an issue, please be as descriptive as possible.
