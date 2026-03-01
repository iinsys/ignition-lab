# Task 8: Multi-Stage Builds

## Objective
Learn how to use multi-stage builds to create smaller and more secure Docker images.

## Exercises
1. In a new directory `08-task-multi-stage-builds`, create a simple Go web server in a file named `main.go`:
   ```go
   package main

   import (
       "fmt"
       "net/http"
   )

   func main() {
       http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
           fmt.Fprintf(w, "Hello, from a multi-stage build!")
       })
       http.ListenAndServe(":8080", nil)
   }
   ```
2. Create a `Dockerfile` with a multi-stage build:
   ```dockerfile
   # build stage
   FROM golang:1.16-alpine AS builder
   WORKDIR /app
   COPY . .
   RUN go build -o main .

   # final stage
   FROM alpine:latest
   WORKDIR /app
   COPY --from=builder /app/main .
   EXPOSE 8080
   CMD ["/app/main"]
   ```
3. Build the Docker image.
   ```bash
   docker build -t my-go-app-multistage .
   ```
4. Check the size of the image. It should be much smaller than if you had used a single-stage build with the `golang` image.
   ```bash
   docker images my-go-app-multistage
   ```
5. Run the container and verify that it works.
   ```bash
   docker run -p 8080:8080 my-go-app-multistage
   ```
