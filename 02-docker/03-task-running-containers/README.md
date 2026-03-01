# Task 3: Running Docker Containers

## Objective
Learn how to run and interact with Docker containers.

## Exercises
1. Run a container in the background from the `ubuntu` image and have it sleep for 300 seconds.
   ```bash
   docker run -d ubuntu sleep 300
   ```
2. List the running containers to see your new container.
   ```bash
   docker ps
   ```
3. Get the logs of the running container. (Note: there won't be any logs for this particular container).
   ```bash
   docker logs <container_id>
   ```
4. Execute a command inside the running container.
   ```bash
   docker exec -it <container_id> ls -l
   ```
5. Stop the running container.
   ```bash
   docker stop <container_id>
   ```
6. List all containers (including stopped ones) to see your container is now stopped.
   ```bash
   docker ps -a
   ```
7. Remove the stopped container.
   ```bash
   docker rm <container_id>
   ```
