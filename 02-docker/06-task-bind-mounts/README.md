# Task 6: Bind Mounts

## Objective
Learn how to mount a directory from the host machine into a container.

## Exercises
1. On your host machine, create a new directory called `my-app` and a file inside it called `index.html` with the content `<h1>Hello from my app!</h1>`.
2. Run an `nginx` container and mount the `my-app` directory to `/usr/share/nginx/html` in the container.
   ```bash
   docker run -d -p 8080:80 -v $(pwd)/my-app:/usr/share/nginx/html nginx
   ```
3. Open your web browser and navigate to `http://localhost:8080`. You should see the content of your `index.html` file.
4. On your host machine, change the content of `index.html` to `<h1>Hello again!</h1>`.
5. Refresh the page in your browser. You should see the updated content.
6. Stop and remove the container.
