# Task 4: Publishing Ports

## Objective
Learn how to expose a container's port to the host machine.

## Exercises
1. Run a container from the `nginx` image in the background.
   ```bash
   docker run -d nginx
   ```
2. Can you access the nginx server from your host machine's browser? (No, because the port is not published).
3. Stop and remove the container.
   ```bash
   docker stop <container_id>
   docker rm <container_id>
   ```
4. Run the `nginx` container again, but this time publish port 80 of the container to port 8080 on the host.
   ```bash
   docker run -d -p 8080:80 nginx
   ```
5. Now, can you access the nginx server from your host machine's browser at `http://localhost:8080`? (Yes).
6. Stop and remove the container.
