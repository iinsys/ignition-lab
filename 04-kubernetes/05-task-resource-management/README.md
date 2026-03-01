# Task 5: Resource Management

## Objective
Learn how to set resource requests and limits for containers in a deployment.

## Exercises
1. In a new directory `05-task-resource-management`, you will find a deployment manifest named `deployment.yaml`.
2. This deployment runs a simple application, but it doesn't have any resource requests or limits defined.
3. Your task is to modify the `deployment.yaml` file to add the following:
   - A CPU request of "100m" (0.1 CPU cores).
   - A memory request of "128Mi".
   - A CPU limit of "200m".
   - A memory limit of "256Mi".
4. Apply the updated manifest to your cluster.
   ```bash
   kubectl apply -f deployment.yaml
   ```
5. Describe the pod and verify that the resource requests and limits have been applied.
   ```bash
   kubectl describe pod <pod-name>
   ```
