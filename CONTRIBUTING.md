# Table of Contents

* [Opening issues](#opening-issues)
* [Adding new containers](#adding-new-containers)
* [Updating containers](#updating-containers)
* [Suggesting enhancements](#suggesting-enhancements)

# Opening issues

### Bugs

If you encounter any bugs or any *oddities* while working with the container source code stored in this repository, please open an issue on this repository. In that issue, please include the following sections:

1. Which container are you using?
2. What are you trying to accomplish?
3. The stacktrace of the error you are receiving.

The more information the better. We cannot fix the problem if we do not know how it is being caused. Also, when you open the issue, please label the issue as a **bug**.

### Documentation

If you have any questions about the documentation or anything mentioned there within, please open an issue marked as **documentation**. The goal of the documentation here is that it will be useful in getting you up to speed on a topic. If something is difficult to understand or something is outdated, please let us know! We will be sure to fix/update the relevant documentation.

# Adding new containers

In order to have a new container accepted into the collection, you will need to follow these steps:

1. Create a fork of this repository and in that fork create a branch named after the container you wish to add.
2. Build and test your container.
3. Create a copy of `/share/templates/container_readme_skel.md`, fill it out for your container, and place it in the root directory where your build file is stored.
4. Open a pull request to the main repository from your branch.
5. In that pull request, please answer these two questions: What did you add/modify in your branch? Why did you make the addition/modification?
6. Wait for your request to be merged or denied.

At this point, we will review the pull request, and we will determine if it should be merged or not! If we deny the merge, we will comment why.

# Updating containers

If you would like to help us keep our containers up to date, you will need to follow these steps:

1. Create a fork of this repository and in that fork create a branch named after the container you are updating.
2. Build and test the updated container.
3. Open a pull request to the main repository from your branch.
4. In that pull request, specify what you changed in the existing container.
5. Wait for your update to be approved or not.

Generally, we will always approve working updates to containers. If your pull request is denied, then it is probably because the container is used for running a legacy version of code or there is a version requirement for the software installed inside the container. Either way, we will be sure to explain why.

# Suggesting enhancements

If there is a new container you would like to see added to this collection or any modifications to this repository that you would like to see, please open an issue on this repository. While we cannot promise that every enhancemnet request will be followed through on, we will at least give it a look! Also, when requesting a feature as an issue, please label the issue as a **feature request** or **enhancement**.