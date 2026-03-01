# Task 1: Simple Web Application with Docker Compose

## Objective
Learn how to use Docker Compose to run a multi-container application.

## Exercises
1. In a new directory `01-task-simple-web-app`, create a Python web application in a file named `app.py`:
   ```python
   from flask import Flask
   import redis
   import os

   app = Flask(__name__)
   # Connect to Redis
   redis_host = os.environ.get('REDIS_HOST', 'localhost')
   r = redis.Redis(host=redis_host, port=6379, db=0)


   @app.route('/')
   def hello():
       count = r.incr('hits')
       return f'Hello World! I have been seen {count} times.'

   if __name__ == "__main__":
       app.run(host="0.0.0.0", debug=True)
   ```
2. Create a `requirements.txt` file:
   ```
   flask
   redis
   ```
3. Create a `Dockerfile`:
   ```dockerfile
   FROM python:3.8-slim-buster

   WORKDIR /app

   COPY . /app

   RUN pip install --no-cache-dir -r requirements.txt

   EXPOSE 5000

   CMD ["python", "app.py"]
   ```
4. Create a `docker-compose.yml` file:
   ```yaml
   version: '3.8'
   services:
     web:
       build: .
       ports:
         - "5000:5000"
       environment:
         - REDIS_HOST=redis
     redis:
       image: "redis:alpine"
   ```
5. Run the application using Docker Compose.
   ```bash
   docker-compose up
   ```
6. Open your web browser and navigate to `http://localhost:5000` to see the application running.
7. Refresh the page a few times to see the counter increment.
8. Bring down the application.
   ```bash
   docker-compose down
   ```
