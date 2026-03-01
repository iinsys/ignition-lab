# Task 7: Docker Networks

## Objective
Learn how to create and use Docker networks.

## Exercises
1. Create a new bridge network.
   ```bash
   docker network create my-net
   ```
2. Run an `nginx` container and connect it to the new network. Give it a name so you can reference it.
   ```bash
   docker run -d --network my-net --name my-nginx nginx
   ```
3. Run an `ubuntu` container, connect it to the same network, and get a shell inside it.
   ```bash
   docker run -it --network my-net ubuntu bash
   ```
4. Inside the `ubuntu` container, try to ping the `nginx` container by its name.
   ```bash
   ping my-nginx
   ```
5. You should see that the containers can communicate with each other over the network.
6. Exit the `ubuntu` container.
7. Stop and remove the containers and remove the network.
   ```bash
   docker stop my-nginx
   docker rm my-nginx
   docker network rm my-net
   ```
