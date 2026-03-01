# Task 2: Building Docker Images

## Objective
Learn how to build a Docker image from a Dockerfile.

## Exercises
1. Create a simple Python web application in a file named `app.py`:
   ```python
   from flask import Flask
   app = Flask(__name__)

   @app.route('/')
   def hello_world():
       return 'Hello, Docker!'

   if __name__ == '__main__':
       app.run(debug=True, host='0.0.0.0')
   ```
2. Create a `requirements.txt` file:
   ```
   Flask==2.0.1
   ```
3. Create a `Dockerfile`:
   ```dockerfile
   # Use an official Python runtime as a parent image
   FROM python:3.8-slim-buster

   # Set the working directory to /app
   WORKDIR /app

   # Copy the current directory contents into the container at /app
   COPY . /app

   # Install any needed packages specified in requirements.txt
   RUN pip install --no-cache-dir -r requirements.txt

   # Make port 5000 available to the world outside this container
   EXPOSE 5000

   # Define environment variable
   ENV NAME World

   # Run app.py when the container launches
   CMD ["python", "app.py"]
   ```
4. Build the Docker image and tag it as `my-python-app`.
   ```bash
   docker build -t my-python-app .
   ```
5. Run the Docker container.
   ```bash
   docker run -p 5000:5000 my-python-app
   ```
6. Open your web browser and navigate to `http://localhost:5000` to see the application running.
