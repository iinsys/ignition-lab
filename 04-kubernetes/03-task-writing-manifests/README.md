# Task 3: Writing Kubernetes Manifests from Scratch

## Objective
Learn how to write Kubernetes deployment and service manifests from scratch.

## Exercises
1. In a new directory `03-task-writing-manifests`, create a simple Go web server in a file named `main.go`:
   ```go
   package main

   import (
       "fmt"
       "net/http"
   )

   func hello(w http.ResponseWriter, req *http.Request) {
       fmt.Fprintf(w, "hello from go\n")
   }

   func main() {
       http.HandleFunc("/hello", hello)
       http.ListenAndServe(":8080", nil)
   }
   ```
2. Create a `Dockerfile`:
   ```dockerfile
   FROM golang:1.16
   WORKDIR /app
   COPY . .
   RUN go build -o main .
   CMD ["/app/main"]
   ```
3. Build the Docker image and push it to a registry.
   ```bash
   docker build -t your-username/my-go-app .
   docker push your-username/my-go-app
   ```
4. Now, create a deployment manifest named `deployment.yaml` from scratch. The deployment should:
   - Be named `my-go-app`.
   - Have 3 replicas.
   - Use the image you just pushed.
   - Expose port 8080.
5. Create a service manifest named `service.yaml` from scratch. The service should:
    - Be named `my-go-app-service`.
    - Expose the deployment on a NodePort.
6. Apply your manifests to the cluster.
   ```bash
   kubectl apply -f deployment.yaml
   kubectl apply -f service.yaml
   ```
7. Verify that the application is running and access it in your browser.
