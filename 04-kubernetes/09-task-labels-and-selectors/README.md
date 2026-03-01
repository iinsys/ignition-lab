# Task 9: Labels and Selectors

## Objective
Learn how to use labels and selectors to organize and select Kubernetes objects.

## Exercises
1. In a new directory `09-task-labels-and-selectors`, create a deployment manifest named `deployment.yaml` for an `nginx` application. Add the labels `app: frontend` and `env: production` to the pod template.
2. Apply the deployment.
   ```bash
   kubectl apply -f deployment.yaml
   ```
3. Create another deployment manifest for a `busybox` application. Add the labels `app: backend` and `env: production`.
4. Apply the second deployment.
5. Use `kubectl get pods` with selectors to list:
   - All pods with the `env: production` label.
   - All pods with the `app: frontend` label.
   - All pods with the `app: backend` label.
6. Now, create a service manifest that selects only the `frontend` pods and exposes them on a NodePort.
7. Apply the service and verify that it correctly routes traffic to the `nginx` pods.
