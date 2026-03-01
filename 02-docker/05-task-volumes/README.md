# Task 5: Volumes

## Objective
Learn how to persist data in Docker containers using volumes.

## Exercises
1. Create a named volume.
   ```bash
   docker volume create my-volume
   ```
2. Run an `ubuntu` container and mount the volume to `/data` in the container.
   ```bash
   docker run -it -v my-volume:/data ubuntu
   ```
3. Inside the container, create a file in the `/data` directory.
   ```bash
   echo "hello from volume" > /data/hello.txt
   ```
4. Exit the container.
5. Run a new `ubuntu` container and mount the same volume.
   ```bash
   docker run -it -v my-volume:/data ubuntu
   ```
6. Inside the new container, check if the file you created earlier exists in `/data`.
   ```bash
   cat /data/hello.txt
   ```
7. Exit the container.
8. Remove the volume.
   ```bash
   docker volume rm my-volume
   ```
