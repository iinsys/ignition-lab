# Task 7: Debugging an OOMKilled Pod

## Objective
Learn how to debug a pod that is being terminated with an `OOMKilled` error.

## Exercises
1. In a new directory `07-task-oomkilled`, you will find a deployment manifest named `deployment.yaml`.
2. This deployment runs a simple application that consumes a lot of memory, but the memory limit is set too low.
3. Apply the manifest to your cluster.
   ```bash
   kubectl apply -f deployment.yaml
   ```
4. The pod will be repeatedly killed and restarted. Your task is to figure out why and fix it.
5. Use `kubectl` to describe the pod and look at the "Last State" section. You should see that the reason for termination was `OOMKilled`.
   ```bash
   kubectl describe pod <pod-name>
   ```
6. Fix the `deployment.yaml` file by increasing the memory limit to a more reasonable value, for example, "256Mi".
7. Apply the updated manifest.
8. Verify that the pod is now running correctly.
