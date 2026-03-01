# Task 1: Docker Installation

## Objective
Install Docker on your system.

## Exercises
1. Follow the official Docker documentation to install Docker Engine on your operating system. You can find the instructions here: [https://docs.docker.com/engine/install/](https://docs.docker.com/engine/install/)
2. Verify that Docker is installed correctly by running the `hello-world` container.
   ```bash
   docker run hello-world
   ```
3. Add your user to the `docker` group to run docker commands without `sudo`.
   ```bash
   sudo usermod -aG docker $USER
   ```
4. Log out and log back in for the group changes to take effect.
5. Verify that you can run docker commands without `sudo`.
   ```bash
   docker run hello-world
   ```

## Solution
This task involves following the official documentation and running the commands provided in the exercises. The output of the `docker run hello-world` command should look something like this:

```
Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/
```
