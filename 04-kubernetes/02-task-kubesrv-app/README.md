# Task 2: Deploying a Pre-existing Application

## Objective
Learn how to deploy an existing application to Kubernetes using provided manifests.

## Exercises
1. Clone the `kubesrv` repository.
   ```bash
   git clone https://github.com/bansikah22/kubesrv.git
   ```
2. Change into the `kubesrv` directory.
   ```bash
   cd kubesrv
   ```
3. The `k8s` directory contains the Kubernetes manifests for this application. Inspect the files in this directory to understand what resources will be created.
4. Apply all the manifests in the `k8s` directory.
   ```bash
   kubectl apply -f k8s/
   ```
5. Verify that the application is running. You should see a deployment, a service, and pods in the `kubesrv-ns` namespace.
   ```bash
   kubectl get all -n kubesrv-ns
   ```
6. Port-forward the service to access the application from your local machine.
   ```bash
   kubectl port-forward svc/kubesrv-svc 8080:80 -n kubesrv-ns
   ```
7. Open your web browser and navigate to `http://localhost:8080` to see the application running.
8. Clean up the resources by deleting the namespace.
   ```bash
   kubectl delete namespace kubesrv-ns
   ```
