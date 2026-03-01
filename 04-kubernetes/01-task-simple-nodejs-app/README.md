# Task 1: Deploying a Simple Node.js Application

## Objective
Learn how to deploy a simple application to Kubernetes.

## Exercises
1. In a new directory `01-task-simple-nodejs-app`, create a `server.js` file:
   ```javascript
   const http = require('http');

   const handleRequest = (request, response) => {
     console.log('Received request for URL: ' + request.url);
     response.writeHead(200);
     response.end('Hello, Kubernetes!');
   };

   const www = http.createServer(handleRequest);
   www.listen(8080);
   ```
2. Create a `Dockerfile`:
   ```dockerfile
   FROM node:14
   WORKDIR /app
   COPY server.js .
   EXPOSE 8080
   CMD [ "node", "server.js" ]
   ```
3. Build the Docker image and push it to a registry (e.g., Docker Hub).
   ```bash
   docker build -t your-username/my-nodejs-app .
   docker push your-username/my-nodejs-app
   ```
4. Create a Kubernetes deployment file named `deployment.yaml`:
   ```yaml
   apiVersion: apps/v1
   kind: Deployment
   metadata:
     name: my-nodejs-app
   spec:
     replicas: 2
     selector:
       matchLabels:
         app: my-nodejs-app
     template:
       metadata:
         labels:
           app: my-nodejs-app
       spec:
         containers:
         - name: my-nodejs-app
           image: your-username/my-nodejs-app
           ports:
           - containerPort: 8080
   ```
5. Create a Kubernetes service file named `service.yaml`:
   ```yaml
   apiVersion: v1
   kind: Service
   metadata:
     name: my-nodejs-app-service
   spec:
     selector:
       app: my-nodejs-app
     ports:
       - protocol: TCP
         port: 80
         targetPort: 8080
     type: NodePort
   ```
6. Apply the deployment and service to your cluster.
   ```bash
   kubectl apply -f deployment.yaml
   kubectl apply -f service.yaml
   ```
7. Get the URL of your service and access it in your browser.
   ```bash
   minikube service my-nodejs-app-service
   ```
   (This command is for minikube. If you are using a different kind of cluster, you will need to get the external IP in a different way).
