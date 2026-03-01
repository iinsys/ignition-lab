# Task 6: Debugging a CrashLoopBackOff

## Objective
Learn how to debug a pod that is stuck in a `CrashLoopBackOff` state.

## Exercises
1. In a new directory `06-task-crashloopbackoff`, you will find a deployment manifest named `deployment.yaml`.
2. Apply the manifest to your cluster.
   ```bash
   kubectl apply -f deployment.yaml
   ```
3. The pod will go into a `CrashLoopBackOff` state. Your task is to figure out why and fix it.
4. Use `kubectl` commands to inspect the state of the pod and its logs.
   - `kubectl get pods`
   - `kubectl describe pod <pod-name>`
   - `kubectl logs <pod-name>`
5. The logs will show that the application is exiting because a required environment variable is not set.
6. Fix the `deployment.yaml` file by adding the required environment variable. The application expects an environment variable named `MESSAGE`.
7. Apply the updated manifest.
8. Verify that the pod is now running correctly.

## Solution
The `deployment.yaml` should be updated to include the `MESSAGE` environment variable:
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: crashloop-app
spec:
  replicas: 1
  selector:
    matchLabels:
      app: crashloop-app
  template:
    metadata:
      labels:
        app: crashloop-app
    spec:
      containers:
      - name: crashloop-app
        image: busybox
        command: ["/bin/sh", "-c", "echo $MESSAGE; sleep 1; exit 1"]
        env:
        - name: MESSAGE
          value: "Hello from the environment!"
```
